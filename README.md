About
=====

Run BMX7 routing daemon inside a docker container.

Why?
====

* Run many BMX7 on multiple containers
* Load testing
* Simulations
* Generate packet loss and latency via netem module  
* Etc...

Status
======

Not Working, hosts do not appear in "route -n" after a while.

Pre-built image
===============

If you want to try, here is a oneliner:

```
$ docker run --privileged zoobab/bmx7-in-docker
[1        1] WARN  opt_key_path: key=/etc/bmx7/rsa.der does not exist! Creating RSA2048 private key. This can take a while...
[1        1     1] WARN  newDescriptionSqn: Created new descSqnPath=/etc/bmx7/descSqn starting with descSqn=10
[1        1     2] INFO  newDescriptionSqn: New descSqn=10
[1        1     3] INFO  dev_if_fix: Autoconfiguring dev=eth0 idx=21 ip=fd70:e540:7905:c5ec:25cc:9b70:df48:d29b
[1        1     4] INFO  kernel_set_addr: del=0 ifidx=21 ip=fd70:e540:7905:c5ec:25cc:9b70:df48:d29b/16 deprecated=0
[1        1     5] INFO  rtnl_rcv: rcvd cmd=ADDRESS_SET fd=3 iteration=1 retries=10 status=36 err=0 No error information
[1        1     6] ERROR dev_if_fix: No global IP for dev=eth0 ! DEACTIVATING !!!
[1        1     7] WARN  dev_check: not using interface eth0 (retrying later): DOWN CHANGED ila=0 iln=0
[1        1     8] INFO  cryptDhmKeyMake: (null) ret=0 keyType=17 keyLen=256 pSize=256 xSize=256 gxSize=256 count=1 attempt=0
[1        1     9] INFO  update_my_description: ---
[1        1    10] INFO  create_dsc_tlv_nodeKey: added description rsa description pubkey len=256
[1        1    11] INFO  create_chash_tlv: adding t_type=1 DSC_NODE_KEY fDataInLen=257 fDataOutLen=257 -> msgs=1  do_fzip=0, cfd_gzip=0 level=1 virtDescSizes.length/contents=0/0
[1        1    12] INFO  content_add_body: recursion=1 unresolveds=0 cHash=E5407905 gzip=0 maxNested=0 force=1
[1        1    13] INFO  content_add_body: recursion=1 finished
[1        1    14] INFO  create_chash_tlv: virtDescSizes.length/contents=257/1
[1        1    15] INFO  newDescriptionSqn: Not Updating existing descSqnPath=/etc/bmx7/descSqn
[1        1    16] INFO  newDescriptionSqn: New descSqn=11
[1        1    17] INFO  create_dsc_tlv_rsaLinkKey: added description rsa packet pubkey len=112
[1        1    18] INFO  create_chash_tlv: adding t_type=5 DSC_RSA_LINK_KEY fDataInLen=113 fDataOutLen=113 -> msgs=1  do_fzip=0, cfd_gzip=0 level=1 virtDescSizes.length/contents=257/1
[1        1    19] INFO  content_add_body: recursion=1 unresolveds=1 cHash=C816ED2C gzip=0 maxNested=0 force=1
[1        1    20] INFO  content_add_body: recursion=1 finished
[1        1    21] INFO  create_chash_tlv: virtDescSizes.length/contents=370/2
[1        1    22] INFO  create_dsc_tlv_dhmLinkKey: added description dhm key data 
[1        1    23] INFO  create_chash_tlv: adding t_type=6 DSC_DHM_LINK_KEY fDataInLen=257 fDataOutLen=257 -> msgs=1  do_fzip=0, cfd_gzip=0 level=1 virtDescSizes.length/contents=370/2
[1        1    24] INFO  content_add_body: recursion=1 unresolveds=1 cHash=D6381E82 gzip=0 maxNested=0 force=1
[1        1    25] INFO  content_add_body: recursion=1 finished
[1        1    26] INFO  create_chash_tlv: virtDescSizes.length/contents=627/3
[1        1    27] INFO  create_description_tlv_metricalgo:  size 36
[1        1    28] INFO  create_tlv_hna: hna=fd70:e540:7905:c5ec:25cc:9b70:df48:d29b/128 flags=0 
[1        1    29] INFO  z_compress: slen=18 tlen=0
[1        1    30] INFO  create_chash_tlv: adding t_type=15 DSC_HNA6 fDataInLen=18 fDataOutLen=18 -> msgs=1  do_fzip=1, cfd_gzip=0 level=2 virtDescSizes.length/contents=627/3
[1        1    31] INFO  content_add_body: recursion=1 unresolveds=1 cHash=3E0C5E53 gzip=0 maxNested=0 force=1
[1        1    32] INFO  content_add_body: recursion=1 finished
[1        1    33] INFO  create_chash_tlv: virtDescSizes.length/contents=645/4
[1        1    34] INFO  z_compress: slen=32 tlen=31
[1        1    35] INFO  create_chash_tlv: adding t_type=28 DSC_INFO fDataInLen=32 fDataOutLen=31 -> msgs=1  do_fzip=1, cfd_gzip=1 level=2 virtDescSizes.length/contents=645/4
[1        1    36] INFO  content_add_body: recursion=1 unresolveds=1 cHash=363A746E gzip=0 maxNested=0 force=1
[1        1    37] INFO  content_add_body: recursion=1 finished
[1        1    38] INFO  content_add_body: recursion=1 unresolveds=1 cHash=183BCF6E gzip=0 maxNested=0 force=1
[1        1    39] INFO  content_add_body: recursion=1 finished
[1        1    40] INFO  content_add_body: recursion=1 unresolveds=1 cHash=BFB37B19 gzip=0 maxNested=1 force=1
[1        1    41] INFO  content_add_body: recursion=1 finished
[1        1    42] INFO  create_chash_tlv: virtDescSizes.length/contents=677/7
[1        1    43] INFO  create_dsc_tlv_signature: fixed RSA2048 type=6 signature=8C9F326571BE1B9215136D1C806EE76DE7C8997A7C3382F910AF30B1178F3010136F7ADE725D18156DA3FC4A6A53F6E3111A5296FFC1DB42724FFF1E6A5EE7590834D718D34A272B502B5AB78CEE4ECBCDC5CE4305A58D813FBAD08626887BE1DBB7C6C2132A7F10387BABAF6637125E355EC7ACD56B26251622A138C6073D0CB1257C5BAE3C2F7A440E007712066FEAC5F805239551E19F8CC7CA8A7688182CAD4E5F8D272FEEEB8E1DBBD9ACD4BD0140160E80909B2E5D21E9EA09E21D0ABE6199A77B69881C3F8B4120020448E41224F9CF5E8C28DCCD8F3D3FA7F850A5FC53291E03668F90F3F7598AD612664FC3514DFC28EF424A77462A47523EE3488C of dataSha=DFEEAE6B2191669ADD196E31BB2C90AB4A910B5105848A99F1AFF574 over dataLen=248 data=182E15020000000B0000000B1770AF4922FEB34A788B645852DB5C2557504A826DDED154CA0B6C36B916001528070022C816ED2CAEF9818AED38D418729D147B1FD67896E738D5C9A3B84A140000712A0022D6381E82BE177C92AABE2A23E605C9F3D73E0977A1F7EB0EF138302F000101326826000100001001000065AA55E528053F0003190014000A000680000000067F643F0000000000223E0C5E5318C649DE358686610FC82FA098918B46F715777F2047820F0000127A003E363A746EA52B1EA2126502C77CF3441451C2113B0AA4EAF2D891E572000020E5BFB37B19F3AAFC7FC985E5287168FEB565F4D4B56BD54D154F5BA95E (dataOffset=293 desc_frames_len=541)
[1        1    44] INFO  descContent_assemble: init=1 dc->key=E5407905 desc_frame_len=541 unresolveds=0 descSqn=11
[1        1    45] INFO  descContent_assemble: f_type=0=DSC_CONTENT_HASH f_dlen=32 f_msgs_len=0 fixedMsgs=0 (1=DSC_NODE_KEY gzip=0 maxNesting=1 expanded_len=257, expanded_chash=E5407905)
[1        1    46] INFO  contentUse_add: add=1 expanded_type=1 DSC_NODE_KEY gzip=0 cHash=E5407905 bodyLen=257 nested=0 nested_gzip=0 data=1 usage=0 counted/claimedContents=1/7 maxUsed/AllowedLevel=1/1
[1        1    47] INFO  descContent_assemble: f_type=2=DSC_SIGNATURE f_dlen=257 f_msgs_len=257 fixedMsgs=0 (0=(null) gzip=0 maxNesting=0 expanded_len=0, expanded_chash=(null))
[1        1    48] INFO  descContent_assemble: f_type=3=DSC_VERSION f_dlen=44 f_msgs_len=44 fixedMsgs=1 (0=(null) gzip=0 maxNesting=0 expanded_len=0, expanded_chash=(null))
[1        1    49] INFO  descContent_assemble: f_type=0=DSC_CONTENT_HASH f_dlen=32 f_msgs_len=0 fixedMsgs=0 (5=DSC_RSA_LINK_KEY gzip=0 maxNesting=1 expanded_len=113, expanded_chash=C816ED2C)
[1        1    50] INFO  contentUse_add: add=1 expanded_type=5 DSC_RSA_LINK_KEY gzip=0 cHash=C816ED2C bodyLen=113 nested=0 nested_gzip=0 data=1 usage=0 counted/claimedContents=2/7 maxUsed/AllowedLevel=1/1
[1        1    51] INFO  descContent_assemble: f_type=0=DSC_CONTENT_HASH f_dlen=32 f_msgs_len=0 fixedMsgs=0 (6=DSC_DHM_LINK_KEY gzip=0 maxNesting=1 expanded_len=257, expanded_chash=D6381E82)
[1        1    52] INFO  contentUse_add: add=1 expanded_type=6 DSC_DHM_LINK_KEY gzip=0 cHash=D6381E82 bodyLen=257 nested=0 nested_gzip=0 data=1 usage=0 counted/claimedContents=3/7 maxUsed/AllowedLevel=1/1
[1        1    53] INFO  descContent_assemble: f_type=13=DSC_METRIC f_dlen=36 f_msgs_len=36 fixedMsgs=0 (0=(null) gzip=0 maxNesting=0 expanded_len=0, expanded_chash=(null))
[1        1    54] INFO  descContent_assemble: f_type=0=DSC_CONTENT_HASH f_dlen=32 f_msgs_len=0 fixedMsgs=0 (15=DSC_HNA6 gzip=0 maxNesting=1 expanded_len=18, expanded_chash=3E0C5E53)
[1        1    55] INFO  contentUse_add: add=1 expanded_type=15 DSC_HNA6 gzip=0 cHash=3E0C5E53 bodyLen=18 nested=0 nested_gzip=0 data=1 usage=0 counted/claimedContents=4/7 maxUsed/AllowedLevel=1/1
[1        1    56] INFO  descContent_assemble: f_type=0=DSC_CONTENT_HASH f_dlen=60 f_msgs_len=28 fixedMsgs=0 (28=DSC_INFO gzip=1 maxNesting=2 expanded_len=32, expanded_chash=363A746E)
[1        1    57] INFO  contentUse_add_nested: level=1 maxLevel=2 maxNesting=2
[1        1    58] INFO  contentUse_add: add=1 expanded_type=28 DSC_INFO gzip=1 cHash=BFB37B19 bodyLen=28 nested=1 nested_gzip=0 data=1 usage=0 counted/claimedContents=5/7 maxUsed/AllowedLevel=1/2
[1        1    59] INFO  contentUse_add_nested: level=2 maxLevel=2 maxNesting=2
[1        1    60] INFO  contentUse_add: add=1 expanded_type=28 DSC_INFO gzip=1 cHash=183BCF6E bodyLen=31 nested=0 nested_gzip=0 data=1 usage=0 counted/claimedContents=6/7 maxUsed/AllowedLevel=2/2
[1        1    61] INFO  descContent_assemble: init=0 dc->key=E5407905 desc_frame_len=541 unresolveds=0 descSqn=11
[1        1    62] INFO  descContent_assemble: f_type=0=DSC_CONTENT_HASH f_dlen=32 f_msgs_len=0 fixedMsgs=0 (1=DSC_NODE_KEY gzip=0 maxNesting=1 expanded_len=257, expanded_chash=E5407905)
[1        1    63] INFO  contentUse_add: add=0 expanded_type=1 DSC_NODE_KEY gzip=0 cHash=E5407905 bodyLen=257 nested=0 nested_gzip=0 data=1 usage=1 counted/claimedContents=6/7 maxUsed/AllowedLevel=0/0
[1        1    64] INFO  descContent_assemble: f_type=2=DSC_SIGNATURE f_dlen=257 f_msgs_len=257 fixedMsgs=0 (0=(null) gzip=0 maxNesting=0 expanded_len=0, expanded_chash=(null))
[1        1    65] INFO  descContent_assemble: f_type=3=DSC_VERSION f_dlen=44 f_msgs_len=44 fixedMsgs=1 (0=(null) gzip=0 maxNesting=0 expanded_len=0, expanded_chash=(null))
[1        1    66] INFO  descContent_assemble: f_type=0=DSC_CONTENT_HASH f_dlen=32 f_msgs_len=0 fixedMsgs=0 (5=DSC_RSA_LINK_KEY gzip=0 maxNesting=1 expanded_len=113, expanded_chash=C816ED2C)
[1        1    67] INFO  contentUse_add: add=0 expanded_type=5 DSC_RSA_LINK_KEY gzip=0 cHash=C816ED2C bodyLen=113 nested=0 nested_gzip=0 data=1 usage=1 counted/claimedContents=6/7 maxUsed/AllowedLevel=0/0
[1        1    68] INFO  descContent_assemble: f_type=0=DSC_CONTENT_HASH f_dlen=32 f_msgs_len=0 fixedMsgs=0 (6=DSC_DHM_LINK_KEY gzip=0 maxNesting=1 expanded_len=257, expanded_chash=D6381E82)
[1        1    69] INFO  contentUse_add: add=0 expanded_type=6 DSC_DHM_LINK_KEY gzip=0 cHash=D6381E82 bodyLen=257 nested=0 nested_gzip=0 data=1 usage=1 counted/claimedContents=6/7 maxUsed/AllowedLevel=0/0
[1        1    70] INFO  descContent_assemble: f_type=13=DSC_METRIC f_dlen=36 f_msgs_len=36 fixedMsgs=0 (0=(null) gzip=0 maxNesting=0 expanded_len=0, expanded_chash=(null))
[1        1    71] INFO  descContent_assemble: f_type=0=DSC_CONTENT_HASH f_dlen=32 f_msgs_len=0 fixedMsgs=0 (15=DSC_HNA6 gzip=0 maxNesting=1 expanded_len=18, expanded_chash=3E0C5E53)
[1        1    72] INFO  contentUse_add: add=0 expanded_type=15 DSC_HNA6 gzip=0 cHash=3E0C5E53 bodyLen=18 nested=0 nested_gzip=0 data=1 usage=1 counted/claimedContents=6/7 maxUsed/AllowedLevel=0/0
[1        1    73] INFO  descContent_assemble: f_type=0=DSC_CONTENT_HASH f_dlen=60 f_msgs_len=28 fixedMsgs=0 (28=DSC_INFO gzip=1 maxNesting=2 expanded_len=32, expanded_chash=363A746E)
[1        1    74] INFO  content_attach_references: f_body_len=28 gzip=1 maxLen=32
[1        1    75] INFO  content_attach_references: f_body_len=28 gzip=0 maxLen=32
[1        1    76] INFO  content_attach_data: ((d1=31)+fbl=31) > (targetLen=32) compression=0 targetHash=(null)
[1        1    77] INFO  content_attach_data: ((d1=31)+fbl=31) > (targetLen=32) compression=0 targetHash=(null)
[1        1    78] INFO  z_decompress: slen=31 tlen=32
[1        1    79] INFO  content_attach_data: ((d1=32)+fbl=31) > (targetLen=32) compression=1 targetHash=363A746E
[1        1    80] INFO  content_add_body: recursion=1 unresolveds=0 cHash=363A746E gzip=0 maxNested=0 force=1
[1        1    81] INFO  content_add_body: recursion=1 finished
[1        1    82] INFO  contentUse_add: add=1 expanded_type=28 DSC_INFO gzip=1 cHash=363A746E bodyLen=32 nested=0 nested_gzip=0 data=1 usage=0 counted/claimedContents=7/7 maxUsed/AllowedLevel=0/0
[1        1    83] INFO  keyNode_setState: nodeId=E5407905 old=trackedQualifying or=0 oc=1 new=certifiedQualifying nr=0 nc=2
[1        1    84] INFO  process_description_tlvs: op=TLV_OP_TEST nodeId=E5407905C5EC25CC9B70DF48D29BD5AE4B4D387829778805B5CC90D0 filter=255
[1        1    85] INFO  process_dsc_tlv_hna: TLV_OP_TEST nodeId=E5407905C5EC25CC9B70DF48D29BD5AE4B4D387829778805B5CC90D0 unicastHna=fd70:e540:7905:c5ec:25cc:9b70:df48:d29b/128
[1        1    86] INFO  keyNode_setState: nodeId=E5407905 old=certifiedQualifying or=0 oc=2 new=promotedQualifying nr=0 nc=3
[1        1    87] INFO  process_description_tlvs: op=TLV_OP_NEW nodeId=E5407905C5EC25CC9B70DF48D29BD5AE4B4D387829778805B5CC90D0 filter=255
[1        1    88] INFO  process_dsc_tlv_hna: TLV_OP_NEW nodeId=E5407905C5EC25CC9B70DF48D29BD5AE4B4D387829778805B5CC90D0 unicastHna=fd70:e540:7905:c5ec:25cc:9b70:df48:d29b/128
[1        1    89] INFO  neighRefs_update: id=E5407905 name=fed5326a4865
[1        1    90] INFO  keyNode_setState: nodeId=E5407905 old=promotedQualifying or=0 oc=3 new=neighboringQualifying nr=0 nc=4
[1        1    91] INFO  neighRefs_update: id=E5407905 name=fed5326a4865
[1        1    92] INFO  update_my_description: nodeId=E5407905C5EC25CC9B70DF48D29BD5AE4B4D387829778805B5CC90D0 dhashOld=00000000000000000000000000000000000000000000000000000000 dhashNew=B167053C9E919CA95455CD9A902A5F92D3C6A6B39A90D00E9A208861 descSqn=11
[1      371    93] INFO  recv_ruleEvent_netlink_sk: detected changed rules! Going to check...
[1      371    94] INFO  rtnl_rcv: rcvd cmd=ROUTE_GET fd=8 iteration=1 retries=10 status=52 err=0 No error information
[1      371    95] INFO  rtnl_rcv: rcvd cmd=ROUTE_GET fd=4 iteration=1 retries=10 status=148 err=0 No error information
[1      371    96] INFO  get_rule_list_nlhdr: nlmsg_type=32 family=2 flags=0 table=255 protocol=0 src_len=0 dst_len=0 tos=0 prio=0 src=0 dst=0, fwmark=0 mwmask=0 iif=0 oif=0 table=1
[1      371    97] INFO  get_rule_list_nlhdr: nlmsg_type=32 family=2 flags=0 table=254 protocol=0 src_len=0 dst_len=0 tos=0 prio=32766 src=0 dst=0, fwmark=0 mwmask=0 iif=0 oif=0 table=1
[1      371    98] INFO  get_rule_list_nlhdr: nlmsg_type=32 family=2 flags=0 table=253 protocol=0 src_len=0 dst_len=0 tos=0 prio=32767 src=0 dst=0, fwmark=0 mwmask=0 iif=0 oif=0 table=1
[1      371    99] INFO  rtnl_rcv: rcvd cmd=ROUTE_GET fd=4 iteration=2 retries=10 status=20 err=0 No error information
[1      371   100] INFO  rtnl_rcv: NLMSG_DONE
[1      371   101] INFO  rtnl_rcv: rcvd cmd=ROUTE_GET fd=4 iteration=1 retries=10 status=148 err=0 No error information
[1      371   102] INFO  get_rule_list_nlhdr: nlmsg_type=32 family=10 flags=0 table=255 protocol=0 src_len=0 dst_len=0 tos=0 prio=0 src=0 dst=0, fwmark=0 mwmask=0 iif=0 oif=0 table=1
[1      371   103] INFO  get_rule_list_nlhdr: nlmsg_type=32 family=10 flags=0 table=70 protocol=0 src_len=0 dst_len=0 tos=0 prio=70 src=0 dst=0, fwmark=0 mwmask=0 iif=0 oif=0 table=1
[1      371   104] INFO  get_rule_list_nlhdr: found 1/1
[1      371   105] INFO  get_rule_list_nlhdr: nlmsg_type=32 family=10 flags=0 table=254 protocol=0 src_len=0 dst_len=0 tos=0 prio=32766 src=0 dst=0, fwmark=0 mwmask=0 iif=0 oif=0 table=1
[1      371   106] INFO  rtnl_rcv: rcvd cmd=ROUTE_GET fd=4 iteration=2 retries=10 status=20 err=0 No error information
[1      371   107] INFO  rtnl_rcv: NLMSG_DONE
[1      663   108] INFO  schedule_my_originator_message: maxSend=0 range=6000
[1      663   109] INFO  schedule_ogm: maxRcvd=1 maxSend=1 range=6000 hops=0 metric=257G um=257698037760 
[1      663   110] INFO  revise_ogm_aggregations: myNextNow=1 myGuaranteedInterval=6600 aggSqnMax=1 aggSqnSend=0 msgs=1 size=18 max=580 ogmSqnMaxSend=1
[1     1059   111] INFO  check_proc_sys_net:  CHANGING /proc/sys/net/ipv6/conf/all/forwarding from 0 to 1! Set --autoSysctl or --autoTunSysctl to 0 for manual configuration
[1     1312   112] INFO  recv_ifevent_netlink_sk: detected changed interface status! Going to check interfaces!
[1     1312   113] INFO  recv_ifevent_netlink_sk: rcvd 72 bytes
[1     1312   114] INFO  rtnl_rcv: rcvd cmd=LINK_GET fd=3 iteration=1 retries=10 status=2572 err=0 No error information
[1     1312   115] INFO  rtnl_rcv: rcvd cmd=LINK_GET fd=3 iteration=2 retries=10 status=20 err=0 No error information
[1     1312   116] INFO  rtnl_rcv: NLMSG_DONE
[1     1312   117] INFO  rtnl_rcv: rcvd cmd=ADDR_GET fd=3 iteration=1 retries=10 status=156 err=0 No error information
[1     1312   118] INFO  rtnl_rcv: rcvd cmd=ADDR_GET fd=3 iteration=2 retries=10 status=288 err=0 No error information
[1     1312   119] INFO  kernel_get_if_addr_config: eth0 addr fd70:e540:7905:c5ec:25cc:9b70:df48:d29b CHANGED old=0
[1     1312   120] INFO  rtnl_rcv: rcvd cmd=ADDR_GET fd=3 iteration=3 retries=10 status=20 err=0 No error information
[1     1312   121] INFO  rtnl_rcv: NLMSG_DONE
[1     1312   122] WARN  kernel_get_if_config_post: link=eth0 dev=eth0 configuration CHANGED
[1     1312   123] WARN  kernel_get_if_config_post: network configuration CHANGED
[1     1312   124] WARN  dev_check: detected valid but disabled dev=eth0 ! Activating now...
[1     1312   125] WARN  dev_activate: dev=eth0
[1     1312   126] INFO  dev_reconfigure_soft: eth0 soft interface configuration changed
[1     1312   127] INFO  dev_reconfigure_soft: enabled ethernet umax=1000M umax=1000000000 umax_conf=18446744073709551615 undef=18446744073709551615 dev=eth0 MAC: 02:42:ac:11:00:02 link-local fe80::42:acff:fe11:2/64 global fd70:e540:7905:c5ec:25cc:9b70:df48:d29b/16 brc ff02::2
[1     1356   128] INFO  update_my_description: ---
[1     1356   129] INFO  create_dsc_tlv_nodeKey: added description rsa description pubkey len=256
[1     1356   130] INFO  create_chash_tlv: adding t_type=1 DSC_NODE_KEY fDataInLen=257 fDataOutLen=257 -> msgs=1  do_fzip=0, cfd_gzip=0 level=1 virtDescSizes.length/contents=0/0
[1     1356   131] INFO  content_add_body: recursion=1 unresolveds=0 cHash=E5407905 gzip=0 maxNested=0 force=1
[1     1356   132] INFO  content_add_body: recursion=1 finished
[1     1356   133] INFO  create_chash_tlv: virtDescSizes.length/contents=257/1
[1     1356   134] INFO  newDescriptionSqn: Not Updating existing descSqnPath=/etc/bmx7/descSqn
[1     1356   135] INFO  newDescriptionSqn: New descSqn=12

[...]

```
