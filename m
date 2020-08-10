Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBFEZY34QKGQEDA44HJQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x538.google.com (mail-pg1-x538.google.com [IPv6:2607:f8b0:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id 01E2B240CA3
	for <lists+clang-built-linux@lfdr.de>; Mon, 10 Aug 2020 20:06:15 +0200 (CEST)
Received: by mail-pg1-x538.google.com with SMTP id k32sf7065141pgm.15
        for <lists+clang-built-linux@lfdr.de>; Mon, 10 Aug 2020 11:06:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597082773; cv=pass;
        d=google.com; s=arc-20160816;
        b=aYaaLpSVIOxF7+mCLowXAw813MMGKyLp/vNL/1zCVtXyGWi5NuENvtABlao6Ej9Jmo
         N156GIeqOhY7dSchDcs/LSyDGtscCnnuYoyqIAZCYGaj7wVXQIc8Appd1ujZQ+pFAgsD
         4xApLvWlLmxypRAZZxDXCSEZB+8BvSj7fAld4U4Wpnw3gIflxLC1Mep8iz2h8BZAA2v5
         iKV5HFDLHzuRD3TmNDSaeofR5veazZwwnxgQl7/0ybehw0eysJojIVsfBNCQBnAVuEvt
         eFZwxxC7nWjotFQG4h68qdcjS8uFpooHcPphMf3ljr1ixaRfawfyQvAMTfcQGrTGIf58
         CBuw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=eqxmIPV3LETVG5F1nMTyTM+Fzt1gdmRbydxRQdYURGE=;
        b=srj2/IeqmltWT5JkXx5Yn9lKoaYqgTyiH2vhk0T5FUnbSdn5e3e5nC1hIWp1rDvPwo
         u1P/wTSu05RqdcVpEhW53Exx2nJsi1u8y+6s5s2FUbU15+PareHSUunDVea20Q3hW/e/
         De9sCQgeMs2EYVCuS6nkTdmprm9ioBGUS38k8WtEuDRQw0wNJZMJyFhPhZi4yrN0nR4E
         VE2rOU1CXZgpG2TzqHDKqn6F6kAX1F3GeKw8ZR2z7cFzOo6ChgpPsyslry7EzMI7HhmV
         9SVo5fhgkd5lzudL5V3YQGuLy2aEy7tzv7rq7Q/XS8kbWndB3hr1BfxLl5hT/V9eVIki
         up2g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eqxmIPV3LETVG5F1nMTyTM+Fzt1gdmRbydxRQdYURGE=;
        b=jbrptoyb1IfgtbFQKR+IjcsfvHp+YCyXatX79kLs6ERWTHEJCwaPEB3tS6/ZytykRJ
         lJYxkGe04/wHkQiTVU1wLoEn07fIadM8i1XfN0/kSZqKMeV8yKgmJ53gHEGudxWquO0c
         4YAOdQiYC9azstubjt/NEgkvcCFeaURshzvo4XT6OFipbtdTkDynPCoEhfsVreEVLbyH
         xtPujPF7wbSdbGRpQ+Eheo/aU+0cjj51h3sErBBKdXc/dpYJLY8UP6HkDU+kd5rugNbP
         Kh+Y3B8NndfhPXBK75sbOpoByj3RVmRJnqSuc2yc2o7F2DTBCNfqFoHOV7u/PEHmcqbu
         yeEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eqxmIPV3LETVG5F1nMTyTM+Fzt1gdmRbydxRQdYURGE=;
        b=aQ6PAmcr9Aos0qI4qOTtJkrzKIU2l/NG91nkA9Yjw+D1PYX4ko1nSuvuWl2IULVDe0
         aFXYVoMstsXKQLYy/mydqPZVJYCrZfVp8WhEaMLE6yN8lhModiAE7pFYOgG7nnYh6Qsk
         sKyxLkljxA814uGDmp7Ki1Ohnm/NjXy9vK7cFtYeKn3zIAhb8aEBP5UOi7ejr5MgFhOp
         0SEJul0+1jMDrkE60ifpG8Y++hmkhfRaQf0u0P5+GSSBOTham1hcV7IfvBBDZmE8m5/R
         kas8kLMufE8QNmaa9qTZVdyJpnVzICPfHC5J2MoAuFcGupnudxPd51F8oKQBacKMJyYi
         nNtA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533HPy3f3DMIo5+crxLD8eC/ln4Fe3FO+6B8MGFAqYCC732JRwRc
	sWQRb42WZDI/nuVhe2BBKso=
X-Google-Smtp-Source: ABdhPJzr4HkYA/2ka7/VxxFnPZFLI9MAURjzucWA9WTkY90jqknLttDAgRwxdqlEqvCJ7lo1cDz4LQ==
X-Received: by 2002:a17:90b:1116:: with SMTP id gi22mr581347pjb.8.1597082772789;
        Mon, 10 Aug 2020 11:06:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:720b:: with SMTP id ba11ls2446546plb.0.gmail; Mon,
 10 Aug 2020 11:06:12 -0700 (PDT)
X-Received: by 2002:a17:902:bc46:: with SMTP id t6mr24391773plz.273.1597082772243;
        Mon, 10 Aug 2020 11:06:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597082772; cv=none;
        d=google.com; s=arc-20160816;
        b=VzkS8G8O7CL+125owSS4TYb99ENYOG6sNoXDJCRxdwdrFd3N7vJe1b8UFG+tqsw/wn
         8nV53QL4e/bB3drsm35e85rD38h8V/90DPrpOOcubSlW/V1jDp1zl+0dBr3aV/6QV+xN
         EMTFyNVC+CtUxdjabs+/jsceYFoXF7AY1JXyGOUxxzNsSYPEyHuslpBcsv75F7KQ9ofL
         8zumqsoCjjPewfPuCW+kXfcHZrhbGXP+IZr976r33DBLglQJzeALl5sZILwpYIPYAK6P
         0/4nIUiYWC5kFKf8FhoVT8IQWiEGKycwNdiT7MEW2iIMqqppxDSie0Q/Rqcwnn5e6+Ec
         lejw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=ZBCD6Yx4xO2V/eQoC/7bsZG6SIQ1iWzrT434BqeLFvM=;
        b=WFS+fb1CFZhHSr93bV41tG+c4RMPGW3gPe8MFUQIYiLZbvYJQssrxWFkgf8NORjr/m
         a2mcQfJkxYOXhl9QHxFa0skEYZ4ruHP7Eh3pUi9oB/jFFG5sDieay41NPJCfsFttMHKO
         EQlyBBLJZoK5roco7ZCt2vMJSFl+hto3FcY7D5pjkZSOKcYfanH/q/qmnxLhI0YRopEi
         INAjE7aC+ZNdApCs61JaqIz/QKiqflLpF3oxKXlDqyAHAqUZ5cR7MeagCAlgKRFYPr4N
         2WWxzdme9XA/OtHXaDKwIHa6h9zL7ues9lIjpLTROz9nD9wC+M/HjQ/pghK4asvSlZDu
         KyZw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga06.intel.com (mga06.intel.com. [134.134.136.31])
        by gmr-mx.google.com with ESMTPS id n3si34998pjb.3.2020.08.10.11.06.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 10 Aug 2020 11:06:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) client-ip=134.134.136.31;
IronPort-SDR: AYXGbCa/sewe2FGCf2Bg3nLvZK8DgG3Voa19LalcSPckKLN1XF3njWvRKE9yml1ok3uv5PloSO
 mx6qW3fU0miw==
X-IronPort-AV: E=McAfee;i="6000,8403,9709"; a="215105641"
X-IronPort-AV: E=Sophos;i="5.75,458,1589266800"; 
   d="gz'50?scan'50,208,50";a="215105641"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Aug 2020 11:06:10 -0700
IronPort-SDR: GA+Bjr8GXnUAv2aL4YW7JC3w/EZ2aOZ+phRu9mn6dpRDIQ0W+If5VuaVDqmF+ybYr/gyqM/vnv
 abfVK/TGHxcQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,458,1589266800"; 
   d="gz'50?scan'50,208,50";a="398301355"
Received: from lkp-server01.sh.intel.com (HELO 71729f5ca340) ([10.239.97.150])
  by fmsmga001.fm.intel.com with ESMTP; 10 Aug 2020 11:06:07 -0700
Received: from kbuild by 71729f5ca340 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1k5CBU-00006z-3B; Mon, 10 Aug 2020 18:06:08 +0000
Date: Tue, 11 Aug 2020 02:05:49 +0800
From: kernel test robot <lkp@intel.com>
To: Qu Wenruo <wqu@suse.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH v3 2/5] btrfs: extent-tree: Kill BUG_ON() in
 __btrfs_free_extent() and do better comment
Message-ID: <202008110127.yY1RTAqM%lkp@intel.com>
References: <20200809120919.85271-3-wqu@suse.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="Kj7319i9nmIyA2yE"
Content-Disposition: inline
In-Reply-To: <20200809120919.85271-3-wqu@suse.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted
 sender) smtp.mailfrom=lkp@intel.com;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=intel.com
Precedence: list
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Spam-Checked-In-Group: clang-built-linux@googlegroups.com
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>


--Kj7319i9nmIyA2yE
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Qu,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on kdave/for-next]
[also build test WARNING on v5.8 next-20200810]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Qu-Wenruo/btrfs-Enhanced-runtime-defence-against-fuzzed-images/20200809-201720
base:   https://git.kernel.org/pub/scm/linux/kernel/git/kdave/linux.git for-next
config: arm-randconfig-r025-20200810 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 3a34228bff6fdf45b50cb57cf5fb85d659eeb672)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install arm cross compiling tool for clang build
        # apt-get install binutils-arm-linux-gnueabi
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   In file included from fs/btrfs/extent-tree.c:20:
   In file included from fs/btrfs/tree-log.h:9:
   fs/btrfs/ctree.h:2265:8: warning: 'const' type qualifier on return type has no effect [-Wignored-qualifiers]
   size_t __const btrfs_get_num_csums(void);
          ^~~~~~~~
   In file included from fs/btrfs/extent-tree.c:28:
   fs/btrfs/sysfs.h:16:14: warning: 'const' type qualifier on return type has no effect [-Wignored-qualifiers]
   const char * const btrfs_feature_set_name(enum btrfs_feature_set set);
                ^~~~~~
>> fs/btrfs/extent-tree.c:3157:8: warning: format specifies type 'unsigned long' but the argument has type 'unsigned int' [-Wformat]
                                      sizeof(*ei) + sizeof(*bi));
                                      ^~~~~~~~~~~~~~~~~~~~~~~~~
   fs/btrfs/ctree.h:3101:41: note: expanded from macro 'btrfs_crit'
           btrfs_printk(fs_info, KERN_CRIT fmt, ##args)
                                           ~~~    ^~~~
   3 warnings generated.

vim +3157 fs/btrfs/extent-tree.c

  2932	
  2933	/*
  2934	 * Real work happens here to drop one or more refs of @node.
  2935	 *
  2936	 * The work is mostly done in two parts:
  2937	 * 1. Locate the extent refs.
  2938	 *    It's either inlined in EXTENT/METADATA_ITEM or in keyed SHARED_* item.
  2939	 *    Locate it then reduces the refs number or remove the ref line completely.
  2940	 *
  2941	 * 2. Update the refs count in EXTENT/METADATA_ITEM
  2942	 *
  2943	 * Due to the above two operations and possible optimizations, the function
  2944	 * is a little hard to read, but with the following examples, the result
  2945	 * of this function should be pretty easy to get.
  2946	 *
  2947	 * Example:
  2948	 * *** Inlined backref case ***
  2949	 * In extent tree we have:
  2950	 * 	item 0 key (13631488 EXTENT_ITEM 1048576) itemoff 16201 itemsize 82
  2951	 *		refs 2 gen 6 flags DATA
  2952	 *		extent data backref root FS_TREE objectid 258 offset 0 count 1
  2953	 *		extent data backref root FS_TREE objectid 257 offset 0 count 1
  2954	 *
  2955	 * This function get called with
  2956	 *  node->bytenr = 13631488, node->num_bytes = 1048576
  2957	 *  root_objectid = FS_TREE, owner_objectid = 257, owner_offset = 0,
  2958	 *  refs_to_drop = 1
  2959	 * Then we should get some like:
  2960	 * 	item 0 key (13631488 EXTENT_ITEM 1048576) itemoff 16201 itemsize 82
  2961	 *		refs 1 gen 6 flags DATA
  2962	 *		extent data backref root FS_TREE objectid 258 offset 0 count 1
  2963	 *
  2964	 * *** Keyed backref case ***
  2965	 * In extent tree we have:
  2966	 *	item 0 key (13631488 EXTENT_ITEM 1048576) itemoff 3971 itemsize 24
  2967	 *		refs 754 gen 6 flags DATA
  2968	 *	[...]
  2969	 *	item 2 key (13631488 EXTENT_DATA_REF <HASH>) itemoff 3915 itemsize 28
  2970	 *		extent data backref root FS_TREE objectid 866 offset 0 count 1
  2971	 * This function get called with
  2972	 *  node->bytenr = 13631488, node->num_bytes = 1048576
  2973	 *  root_objectid = FS_TREE, owner_objectid = 866, owner_offset = 0,
  2974	 *  refs_to_drop = 1
  2975	 * Then we should get some like:
  2976	 *	item 0 key (13631488 EXTENT_ITEM 1048576) itemoff 3971 itemsize 24
  2977	 *		refs 753 gen 6 flags DATA
  2978	 * And that (13631488 EXTENT_DATA_REF <HASH>) get removed.
  2979	 */
  2980	static int __btrfs_free_extent(struct btrfs_trans_handle *trans,
  2981				       struct btrfs_delayed_ref_node *node, u64 parent,
  2982				       u64 root_objectid, u64 owner_objectid,
  2983				       u64 owner_offset, int refs_to_drop,
  2984				       struct btrfs_delayed_extent_op *extent_op)
  2985	{
  2986		struct btrfs_fs_info *info = trans->fs_info;
  2987		struct btrfs_key key;
  2988		struct btrfs_path *path;
  2989		struct btrfs_root *extent_root = info->extent_root;
  2990		struct extent_buffer *leaf;
  2991		struct btrfs_extent_item *ei;
  2992		struct btrfs_extent_inline_ref *iref;
  2993		int ret;
  2994		int is_data;
  2995		int extent_slot = 0;
  2996		int found_extent = 0;
  2997		int num_to_del = 1;
  2998		u32 item_size;
  2999		u64 refs;
  3000		u64 bytenr = node->bytenr;
  3001		u64 num_bytes = node->num_bytes;
  3002		int last_ref = 0;
  3003		bool skinny_metadata = btrfs_fs_incompat(info, SKINNY_METADATA);
  3004	
  3005		path = btrfs_alloc_path();
  3006		if (!path)
  3007			return -ENOMEM;
  3008	
  3009		path->leave_spinning = 1;
  3010	
  3011		is_data = owner_objectid >= BTRFS_FIRST_FREE_OBJECTID;
  3012	
  3013		if (unlikely(!is_data && refs_to_drop != 1)) {
  3014			btrfs_crit(info,
  3015	"invalid refs_to_drop, dropping more than 1 refs for tree block %llu refs_to_drop %u",
  3016				   node->bytenr, refs_to_drop);
  3017			ret = -EINVAL;
  3018			btrfs_abort_transaction(trans, ret);
  3019			goto out;
  3020		}
  3021	
  3022		if (is_data)
  3023			skinny_metadata = false;
  3024	
  3025		ret = lookup_extent_backref(trans, path, &iref, bytenr, num_bytes,
  3026					    parent, root_objectid, owner_objectid,
  3027					    owner_offset);
  3028		if (ret == 0) {
  3029			/*
  3030			 * Either the inline backref or the SHARED_DATA_REF/
  3031			 * SHARED_BLOCK_REF is found
  3032			 *
  3033			 * Here is a quick path to locate EXTENT/METADATA_ITEM.
  3034			 * It's possible the EXTENT/METADATA_ITEM is near current slot.
  3035			 */
  3036			extent_slot = path->slots[0];
  3037			while (extent_slot >= 0) {
  3038				btrfs_item_key_to_cpu(path->nodes[0], &key,
  3039						      extent_slot);
  3040				if (key.objectid != bytenr)
  3041					break;
  3042				if (key.type == BTRFS_EXTENT_ITEM_KEY &&
  3043				    key.offset == num_bytes) {
  3044					found_extent = 1;
  3045					break;
  3046				}
  3047				if (key.type == BTRFS_METADATA_ITEM_KEY &&
  3048				    key.offset == owner_objectid) {
  3049					found_extent = 1;
  3050					break;
  3051				}
  3052	
  3053				/* Quick path didn't find the EXTEMT/METADATA_ITEM */
  3054				if (path->slots[0] - extent_slot > 5)
  3055					break;
  3056				extent_slot--;
  3057			}
  3058	
  3059			if (!found_extent) {
  3060				if (unlikely(iref)) {
  3061					btrfs_crit(info,
  3062	"invalid iref, no EXTENT/METADATA_ITEM found but has inline extent ref");
  3063					goto err_dump_abort;
  3064				}
  3065				/* Must be SHARED_* item, remove the backref first */
  3066				ret = remove_extent_backref(trans, path, NULL,
  3067							    refs_to_drop,
  3068							    is_data, &last_ref);
  3069				if (ret) {
  3070					btrfs_abort_transaction(trans, ret);
  3071					goto out;
  3072				}
  3073				btrfs_release_path(path);
  3074				path->leave_spinning = 1;
  3075	
  3076	
  3077				/* Slow path to locate EXTENT/METADATA_ITEM */
  3078				key.objectid = bytenr;
  3079				key.type = BTRFS_EXTENT_ITEM_KEY;
  3080				key.offset = num_bytes;
  3081	
  3082				if (!is_data && skinny_metadata) {
  3083					key.type = BTRFS_METADATA_ITEM_KEY;
  3084					key.offset = owner_objectid;
  3085				}
  3086	
  3087				ret = btrfs_search_slot(trans, extent_root,
  3088							&key, path, -1, 1);
  3089				if (ret > 0 && skinny_metadata && path->slots[0]) {
  3090					/*
  3091					 * Couldn't find our skinny metadata item,
  3092					 * see if we have ye olde extent item.
  3093					 */
  3094					path->slots[0]--;
  3095					btrfs_item_key_to_cpu(path->nodes[0], &key,
  3096							      path->slots[0]);
  3097					if (key.objectid == bytenr &&
  3098					    key.type == BTRFS_EXTENT_ITEM_KEY &&
  3099					    key.offset == num_bytes)
  3100						ret = 0;
  3101				}
  3102	
  3103				if (ret > 0 && skinny_metadata) {
  3104					skinny_metadata = false;
  3105					key.objectid = bytenr;
  3106					key.type = BTRFS_EXTENT_ITEM_KEY;
  3107					key.offset = num_bytes;
  3108					btrfs_release_path(path);
  3109					ret = btrfs_search_slot(trans, extent_root,
  3110								&key, path, -1, 1);
  3111				}
  3112	
  3113				if (ret) {
  3114					btrfs_err(info,
  3115						  "umm, got %d back from search, was looking for %llu",
  3116						  ret, bytenr);
  3117					if (ret > 0)
  3118						btrfs_print_leaf(path->nodes[0]);
  3119				}
  3120				if (ret < 0) {
  3121					btrfs_abort_transaction(trans, ret);
  3122					goto out;
  3123				}
  3124				extent_slot = path->slots[0];
  3125			}
  3126		} else if (WARN_ON(ret == -ENOENT)) {
  3127			btrfs_print_leaf(path->nodes[0]);
  3128			btrfs_err(info,
  3129				"unable to find ref byte nr %llu parent %llu root %llu  owner %llu offset %llu",
  3130				bytenr, parent, root_objectid, owner_objectid,
  3131				owner_offset);
  3132			btrfs_abort_transaction(trans, ret);
  3133			goto out;
  3134		} else {
  3135			btrfs_abort_transaction(trans, ret);
  3136			goto out;
  3137		}
  3138	
  3139		leaf = path->nodes[0];
  3140		item_size = btrfs_item_size_nr(leaf, extent_slot);
  3141		if (unlikely(item_size < sizeof(*ei))) {
  3142			ret = -EINVAL;
  3143			btrfs_print_v0_err(info);
  3144			btrfs_abort_transaction(trans, ret);
  3145			goto out;
  3146		}
  3147		ei = btrfs_item_ptr(leaf, extent_slot,
  3148				    struct btrfs_extent_item);
  3149		if (owner_objectid < BTRFS_FIRST_FREE_OBJECTID &&
  3150		    key.type == BTRFS_EXTENT_ITEM_KEY) {
  3151			struct btrfs_tree_block_info *bi;
  3152			if (unlikely(item_size < sizeof(*ei) + sizeof(*bi))) {
  3153				btrfs_crit(info,
  3154	"invalid extent item size for key (%llu, %u, %llu) owner %llu, has %u expect >= %lu",
  3155					   key.objectid, key.type, key.offset,
  3156					   owner_objectid, item_size,
> 3157					   sizeof(*ei) + sizeof(*bi));
  3158				goto err_dump_abort;
  3159			}
  3160			bi = (struct btrfs_tree_block_info *)(ei + 1);
  3161			WARN_ON(owner_objectid != btrfs_tree_block_level(leaf, bi));
  3162		}
  3163	
  3164		refs = btrfs_extent_refs(leaf, ei);
  3165		if (refs < refs_to_drop) {
  3166			btrfs_crit(info,
  3167			"trying to drop %d refs but we only have %Lu for bytenr %Lu",
  3168				  refs_to_drop, refs, bytenr);
  3169			goto err_dump_abort;
  3170		}
  3171		refs -= refs_to_drop;
  3172	
  3173		if (refs > 0) {
  3174			if (extent_op)
  3175				__run_delayed_extent_op(extent_op, leaf, ei);
  3176			/*
  3177			 * In the case of inline back ref, reference count will
  3178			 * be updated by remove_extent_backref
  3179			 */
  3180			if (iref) {
  3181				if (unlikely(!found_extent)) {
  3182					btrfs_crit(info,
  3183	"invalid iref, got inlined extent ref but no EXTENT/METADATA_ITEM found");
  3184					goto err_dump_abort;
  3185				}
  3186			} else {
  3187				btrfs_set_extent_refs(leaf, ei, refs);
  3188				btrfs_mark_buffer_dirty(leaf);
  3189			}
  3190			if (found_extent) {
  3191				ret = remove_extent_backref(trans, path, iref,
  3192							    refs_to_drop, is_data,
  3193							    &last_ref);
  3194				if (ret) {
  3195					btrfs_abort_transaction(trans, ret);
  3196					goto out;
  3197				}
  3198			}
  3199		} else {
  3200			/* In this branch refs == 1 */
  3201			if (found_extent) {
  3202				if (is_data && refs_to_drop !=
  3203				    extent_data_ref_count(path, iref)) {
  3204					btrfs_crit(info,
  3205			"invalid refs_to_drop, current refs %u refs_to_drop %u",
  3206						   extent_data_ref_count(path, iref),
  3207						   refs_to_drop);
  3208					goto err_dump_abort;
  3209				}
  3210				if (iref) {
  3211					if (path->slots[0] != extent_slot) {
  3212						btrfs_crit(info,
  3213	"invalid iref, extent item key (%llu %u %llu) doesn't has wanted iref",
  3214							   key.objectid, key.type,
  3215							   key.offset);
  3216						goto err_dump_abort;
  3217					}
  3218				} else {
  3219					/*
  3220					 * No inline ref, we must at SHARED_* item,
  3221					 * And it's single ref, it must be:
  3222					 * |	extent_slot	  ||extent_slot + 1|
  3223					 * [ EXTENT/METADATA_ITEM ][ SHARED_* ITEM ]
  3224					 */
  3225					if (path->slots[0] != extent_slot + 1) {
  3226						btrfs_crit(info,
  3227		"invalid SHARED_* item, previous item is not EXTENT/METADATA_ITEM");
  3228						goto err_dump_abort;
  3229					}
  3230					path->slots[0] = extent_slot;
  3231					num_to_del = 2;
  3232				}
  3233			}
  3234	
  3235			last_ref = 1;
  3236			ret = btrfs_del_items(trans, extent_root, path, path->slots[0],
  3237					      num_to_del);
  3238			if (ret) {
  3239				btrfs_abort_transaction(trans, ret);
  3240				goto out;
  3241			}
  3242			btrfs_release_path(path);
  3243	
  3244			if (is_data) {
  3245				ret = btrfs_del_csums(trans, info->csum_root, bytenr,
  3246						      num_bytes);
  3247				if (ret) {
  3248					btrfs_abort_transaction(trans, ret);
  3249					goto out;
  3250				}
  3251			}
  3252	
  3253			ret = add_to_free_space_tree(trans, bytenr, num_bytes);
  3254			if (ret) {
  3255				btrfs_abort_transaction(trans, ret);
  3256				goto out;
  3257			}
  3258	
  3259			ret = btrfs_update_block_group(trans, bytenr, num_bytes, 0);
  3260			if (ret) {
  3261				btrfs_abort_transaction(trans, ret);
  3262				goto out;
  3263			}
  3264		}
  3265		btrfs_release_path(path);
  3266	
  3267	out:
  3268		btrfs_free_path(path);
  3269		return ret;
  3270	err_dump_abort:
  3271		/*
  3272		 * Leaf dump can take up a lot of dmesg buffer since default nodesize
  3273		 * is already 16K.
  3274		 * So we only do full leaf dump for debug build.
  3275		 */
  3276		if (IS_ENABLED(CONFIG_BTRFS_DEBUG)) {
  3277			btrfs_crit(info, "path->slots[0]=%d extent_slot=%d",
  3278				   path->slots[0], extent_slot);
  3279			btrfs_print_leaf(path->nodes[0]);
  3280		}
  3281	
  3282		btrfs_abort_transaction(trans, -EUCLEAN);
  3283		btrfs_free_path(path);
  3284		return -EUCLEAN;
  3285	}
  3286	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202008110127.yY1RTAqM%25lkp%40intel.com.

--Kj7319i9nmIyA2yE
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--Kj7319i9nmIyA2yE--
