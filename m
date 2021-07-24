Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBYHR6GDQMGQEXFOREYY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x837.google.com (mail-qt1-x837.google.com [IPv6:2607:f8b0:4864:20::837])
	by mail.lfdr.de (Postfix) with ESMTPS id A5AAC3D49E4
	for <lists+clang-built-linux@lfdr.de>; Sat, 24 Jul 2021 22:32:33 +0200 (CEST)
Received: by mail-qt1-x837.google.com with SMTP id 15-20020ac84e8f0000b029024e8c2383c1sf2274229qtp.5
        for <lists+clang-built-linux@lfdr.de>; Sat, 24 Jul 2021 13:32:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627158752; cv=pass;
        d=google.com; s=arc-20160816;
        b=e7f+Fzqic5plEVavsa2IetEbtUPJr4BFsPaXhNCqeQ8a8Z1q2mnA/9nabjxI+UXBUv
         n20tYpGOcbKNRGoIk552FMUKZrnC19bgrZrNRMxXlXB2yFxY1dr1QGqObsNt8Ne7GtET
         H4yLns32+7M8dEpYIca/omSRpFa1huAwQUwRbCjH32auN0MC0yiIyWc9PWeQ5a1YWuwU
         c1/GTKMNM7WgSoP3MSNOC1UApZvcBuK/ernZsnZ9E5Ek1kOl5on17nglQ21oAaddJA1l
         +HlyBpqS0i3OAERWnY3KqENRxK1jfaRlngKqZ19UkonCdGhO3ImaXMUD770GQwL/JkIL
         s3KQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=GcFtx+ghoSPxbXjPXhQ95Yvr98nVIN8nU+8/pVxuscg=;
        b=eSGfTKKx7PaV78jdNtiiq1/j94Zb1wnRyUqfGBNW1ZseqQwPpbBGOOZyQZIijS8w3s
         sEYNsP8IFeg1el+Sh/MsLUbV8SI1psyWe3DQMj7q59HqY6fQm0Ab8dYSqFC5GHBdaAGT
         N7yilxt1djCN6LtxouhpZrdQdptcJG6nnJwMfZV65AeO+S4bQBm4unEZqY685Fp8BZf8
         JcT8XygvQrPk/bcxe/RthYXAjyDHVILXoQ+2ItUaw/lfez8Mut8M9AIOdWfxycn5mDyB
         EvAdsB7zOqOQf/F7zXrBh0ZcwWNk/PFs/Y9dAgxK7h7QwgIirp5x9r8zBJNzcMH/1rj4
         RQIA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=GcFtx+ghoSPxbXjPXhQ95Yvr98nVIN8nU+8/pVxuscg=;
        b=Qg4xbFkm6cGMCsiLsLIUNCWD0+jTfxlejaYqbnJ84mybsxuMzVoS+ciirunxcRKdzs
         JeT8l+JRK4POBPTN+yEEIjKCBepM9RJh+vXohUR2p3xMCoU+f1exCq3sPEH745cVFxiM
         uYGQqwOl7kcvz/w0Ttzqn58CO+gBUNoznvMvLWeC/vm9orI0Of02C1KxOHnEbcP8GjyR
         tPPOvx0NoqJ8C0MH52Ep2I/0ZJoJtuhL6Y8dB555Phe+yUPLtMm9y1+Eb8Hu4YFkojxX
         m4ORkC6AuaUARrOwM1y9Ujt6fX8ZNMO23eP0esdoCHTZ8OmV9gQ7v51u2yFuqnD0heJp
         ByGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GcFtx+ghoSPxbXjPXhQ95Yvr98nVIN8nU+8/pVxuscg=;
        b=SQ0t2OGqmki734/JsGL/oTTVokK+WEp6iLHbOvxPpvKjUDtphqvK61IwVTxbSCpNoi
         +xXeyQ1U7q59f1FCJrrkX2jcEopGokkSHpnwq4Hm0WuwtW1HNRXU9unVmRFoF1FvgepX
         HPtaAg2xYtWm3FFE3rLo7aQ6ktZUHEcwk1edFrlFSgdttxpAbEW5OQ6jZghcFTyXjFH9
         VfAb4p6C+4GtkbmTrurD/696YW+DoaBwO4APwnS1AEGOE/+I0KrcFfeIWkNiCum9/onT
         OG3R78WoU3ptv/4cFizEcCzTPHBrZVlzxDWs2gDkRO5Qz7YngJ5bvIFJJ2p469/Ie7bK
         kAeQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532AgZo5M7lGrvl47RPT8oQinuqXzH6DFp6k3Ky+VG+RJ79OA+1f
	XcoHFO2wwAXVyHSpw/cqvdw=
X-Google-Smtp-Source: ABdhPJxv3hL8HpMYJ9yMnbHCmRo3gtVip7elYiTAwjRP8xyset8JpyPtA4BzidF/wlC3KUknp1qNFA==
X-Received: by 2002:a05:622a:118a:: with SMTP id m10mr9318392qtk.263.1627158752553;
        Sat, 24 Jul 2021 13:32:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:ef86:: with SMTP id w6ls4666139qvr.6.gmail; Sat, 24 Jul
 2021 13:32:32 -0700 (PDT)
X-Received: by 2002:a05:6214:3ed:: with SMTP id cf13mr2600550qvb.48.1627158752026;
        Sat, 24 Jul 2021 13:32:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627158752; cv=none;
        d=google.com; s=arc-20160816;
        b=l9pN/QiXS6kZozmGe5ZzekFeqKwCdmlPDx1/A0tsPhTVJdhcAy9xCqPikoPa0M1DmZ
         dM0dd41DcI6yJCvArn3js+7v7FzNXxO5V0CVhjWxpOk6KMsZLXGcs6zEYQKkGWAlSodL
         fDjFlbCfg+Kt3x1N3b2IzQnvmLmhPJFKiDsxIcmzzWE006mJvNbpv4Ei/n0oeDdk0y16
         9d3Y1A9lr5YjU79QAkgPEVDn4fFreLOAEMhBlEERDU9/5aMz+Jl+CKnikCFgqRnxdK0p
         SL3h8bvKotjCPB0qwWaa1C+9X8AFJelfz8P7AhyFJW5RtTomPZexrQbgbMDkHz3neIdg
         uAhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=kg3H1hUbOza3N7EvN4U8vK+1zrKc9D//fr4a+2C4K6o=;
        b=ajZBGp7P/+/+imvcHuNyFogejVFMyDp79BRSFF3v9Q1Ld/KuxgGgzXfQmSj+G07MSh
         tBVzXQf5rmYN44J7nkx+wgud0VaBNt49vRpfl7priXLX5+/QDsSSu6+QsdTbQcObiCUu
         RLLrBZ/q6rFjpYkKHDUmVi+9HRm+aBi1fe/1r68m4j5vHCXwne2ARwYJO3/lnrh5kv71
         qo38DJ3f6DxS8F8a/2z+kLNDe/LRY9jWG/5AF+2ZU1sIXa5VycolYbA992GDGoNRoni0
         cz4Dfps4HdttSuD4hGqJDWIGds29p/5napRWqLPpphP9OGP5ry1UpMJWzNgQkjvra4DC
         DUAg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga14.intel.com (mga14.intel.com. [192.55.52.115])
        by gmr-mx.google.com with ESMTPS id bi21si1317913qkb.3.2021.07.24.13.32.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Jul 2021 13:32:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) client-ip=192.55.52.115;
X-IronPort-AV: E=McAfee;i="6200,9189,10055"; a="211763493"
X-IronPort-AV: E=Sophos;i="5.84,266,1620716400"; 
   d="gz'50?scan'50,208,50";a="211763493"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Jul 2021 12:44:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,266,1620716400"; 
   d="gz'50?scan'50,208,50";a="436137294"
Received: from lkp-server01.sh.intel.com (HELO d053b881505b) ([10.239.97.150])
  by fmsmga007.fm.intel.com with ESMTP; 24 Jul 2021 12:44:20 -0700
Received: from kbuild by d053b881505b with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1m7NZL-0003k8-Sb; Sat, 24 Jul 2021 19:44:19 +0000
Date: Sun, 25 Jul 2021 03:43:21 +0800
From: kernel test robot <lkp@intel.com>
To: Christoph Hellwig <hch@lst.de>
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
	linux-kernel@vger.kernel.org
Subject: [hch-block:remove-disk_name 7/9] block/partitions/mac.c:136:29:
 error: no member named 'bdev' in 'struct parsed_partitions'
Message-ID: <202107250307.LUIWCpNT-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="gBBFr7Ir9EOA20Yy"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted
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


--gBBFr7Ir9EOA20Yy
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   git://git.infradead.org/users/hch/block.git remove-disk_name
head:   87e656f4eded79b0bb2d6dbe35f2b421b7444de3
commit: 00a22dc0ea475f8e3b0d871f0e99e20eaf3ed3b7 [7/9] block: store a gendisk in struct parsed_partitions
config: powerpc-randconfig-r033-20210723 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 3f2c1e99e44d028d5e9dd685f3c568f2661f2f68)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc cross compiling tool for clang build
        # apt-get install binutils-powerpc-linux-gnu
        git remote add hch-block git://git.infradead.org/users/hch/block.git
        git fetch --no-tags hch-block remove-disk_name
        git checkout 00a22dc0ea475f8e3b0d871f0e99e20eaf3ed3b7
        # save the attached .config to linux build tree
        mkdir build_dir
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross O=build_dir ARCH=powerpc SHELL=/bin/bash block/

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> block/partitions/mac.c:136:29: error: no member named 'bdev' in 'struct parsed_partitions'
                   note_bootable_part(state->bdev->bd_dev, found_root,
                                      ~~~~~  ^
   1 error generated.


vim +136 block/partitions/mac.c

^1da177e4c3f41 fs/partitions/mac.c    Linus Torvalds         2005-04-16   30  
1493bf217f7f59 fs/partitions/mac.c    Tejun Heo              2010-05-15   31  int mac_partition(struct parsed_partitions *state)
^1da177e4c3f41 fs/partitions/mac.c    Linus Torvalds         2005-04-16   32  {
^1da177e4c3f41 fs/partitions/mac.c    Linus Torvalds         2005-04-16   33  	Sector sect;
^1da177e4c3f41 fs/partitions/mac.c    Linus Torvalds         2005-04-16   34  	unsigned char *data;
fa7ea87a057958 fs/partitions/mac.c    Timo Warns             2011-02-17   35  	int slot, blocks_in_map;
02e2a5bfebe99e block/partitions/mac.c Kees Cook              2015-11-19   36  	unsigned secsize, datasize, partoffset;
^1da177e4c3f41 fs/partitions/mac.c    Linus Torvalds         2005-04-16   37  #ifdef CONFIG_PPC_PMAC
^1da177e4c3f41 fs/partitions/mac.c    Linus Torvalds         2005-04-16   38  	int found_root = 0;
^1da177e4c3f41 fs/partitions/mac.c    Linus Torvalds         2005-04-16   39  	int found_root_goodness = 0;
^1da177e4c3f41 fs/partitions/mac.c    Linus Torvalds         2005-04-16   40  #endif
^1da177e4c3f41 fs/partitions/mac.c    Linus Torvalds         2005-04-16   41  	struct mac_partition *part;
^1da177e4c3f41 fs/partitions/mac.c    Linus Torvalds         2005-04-16   42  	struct mac_driver_desc *md;
^1da177e4c3f41 fs/partitions/mac.c    Linus Torvalds         2005-04-16   43  
^1da177e4c3f41 fs/partitions/mac.c    Linus Torvalds         2005-04-16   44  	/* Get 0th block and look at the first partition map entry. */
1493bf217f7f59 fs/partitions/mac.c    Tejun Heo              2010-05-15   45  	md = read_part_sector(state, 0, &sect);
^1da177e4c3f41 fs/partitions/mac.c    Linus Torvalds         2005-04-16   46  	if (!md)
^1da177e4c3f41 fs/partitions/mac.c    Linus Torvalds         2005-04-16   47  		return -1;
^1da177e4c3f41 fs/partitions/mac.c    Linus Torvalds         2005-04-16   48  	if (be16_to_cpu(md->signature) != MAC_DRIVER_MAGIC) {
^1da177e4c3f41 fs/partitions/mac.c    Linus Torvalds         2005-04-16   49  		put_dev_sector(sect);
^1da177e4c3f41 fs/partitions/mac.c    Linus Torvalds         2005-04-16   50  		return 0;
^1da177e4c3f41 fs/partitions/mac.c    Linus Torvalds         2005-04-16   51  	}
^1da177e4c3f41 fs/partitions/mac.c    Linus Torvalds         2005-04-16   52  	secsize = be16_to_cpu(md->block_size);
^1da177e4c3f41 fs/partitions/mac.c    Linus Torvalds         2005-04-16   53  	put_dev_sector(sect);
02e2a5bfebe99e block/partitions/mac.c Kees Cook              2015-11-19   54  	datasize = round_down(secsize, 512);
02e2a5bfebe99e block/partitions/mac.c Kees Cook              2015-11-19   55  	data = read_part_sector(state, datasize / 512, &sect);
^1da177e4c3f41 fs/partitions/mac.c    Linus Torvalds         2005-04-16   56  	if (!data)
^1da177e4c3f41 fs/partitions/mac.c    Linus Torvalds         2005-04-16   57  		return -1;
02e2a5bfebe99e block/partitions/mac.c Kees Cook              2015-11-19   58  	partoffset = secsize % 512;
02e2a5bfebe99e block/partitions/mac.c Kees Cook              2015-11-19   59  	if (partoffset + sizeof(*part) > datasize)
02e2a5bfebe99e block/partitions/mac.c Kees Cook              2015-11-19   60  		return -1;
02e2a5bfebe99e block/partitions/mac.c Kees Cook              2015-11-19   61  	part = (struct mac_partition *) (data + partoffset);
^1da177e4c3f41 fs/partitions/mac.c    Linus Torvalds         2005-04-16   62  	if (be16_to_cpu(part->signature) != MAC_PARTITION_MAGIC) {
^1da177e4c3f41 fs/partitions/mac.c    Linus Torvalds         2005-04-16   63  		put_dev_sector(sect);
^1da177e4c3f41 fs/partitions/mac.c    Linus Torvalds         2005-04-16   64  		return 0;		/* not a MacOS disk */
^1da177e4c3f41 fs/partitions/mac.c    Linus Torvalds         2005-04-16   65  	}
^1da177e4c3f41 fs/partitions/mac.c    Linus Torvalds         2005-04-16   66  	blocks_in_map = be32_to_cpu(part->map_count);
fa7ea87a057958 fs/partitions/mac.c    Timo Warns             2011-02-17   67  	if (blocks_in_map < 0 || blocks_in_map >= DISK_MAX_PARTS) {
fa7ea87a057958 fs/partitions/mac.c    Timo Warns             2011-02-17   68  		put_dev_sector(sect);
fa7ea87a057958 fs/partitions/mac.c    Timo Warns             2011-02-17   69  		return 0;
fa7ea87a057958 fs/partitions/mac.c    Timo Warns             2011-02-17   70  	}
06004e6eebdaf1 block/partitions/mac.c Ming Lei               2013-02-27   71  
06004e6eebdaf1 block/partitions/mac.c Ming Lei               2013-02-27   72  	if (blocks_in_map >= state->limit)
06004e6eebdaf1 block/partitions/mac.c Ming Lei               2013-02-27   73  		blocks_in_map = state->limit - 1;
06004e6eebdaf1 block/partitions/mac.c Ming Lei               2013-02-27   74  
fa7ea87a057958 fs/partitions/mac.c    Timo Warns             2011-02-17   75  	strlcat(state->pp_buf, " [mac]", PAGE_SIZE);
fa7ea87a057958 fs/partitions/mac.c    Timo Warns             2011-02-17   76  	for (slot = 1; slot <= blocks_in_map; ++slot) {
fa7ea87a057958 fs/partitions/mac.c    Timo Warns             2011-02-17   77  		int pos = slot * secsize;
^1da177e4c3f41 fs/partitions/mac.c    Linus Torvalds         2005-04-16   78  		put_dev_sector(sect);
1493bf217f7f59 fs/partitions/mac.c    Tejun Heo              2010-05-15   79  		data = read_part_sector(state, pos/512, &sect);
^1da177e4c3f41 fs/partitions/mac.c    Linus Torvalds         2005-04-16   80  		if (!data)
^1da177e4c3f41 fs/partitions/mac.c    Linus Torvalds         2005-04-16   81  			return -1;
^1da177e4c3f41 fs/partitions/mac.c    Linus Torvalds         2005-04-16   82  		part = (struct mac_partition *) (data + pos%512);
^1da177e4c3f41 fs/partitions/mac.c    Linus Torvalds         2005-04-16   83  		if (be16_to_cpu(part->signature) != MAC_PARTITION_MAGIC)
^1da177e4c3f41 fs/partitions/mac.c    Linus Torvalds         2005-04-16   84  			break;
^1da177e4c3f41 fs/partitions/mac.c    Linus Torvalds         2005-04-16   85  		put_partition(state, slot,
^1da177e4c3f41 fs/partitions/mac.c    Linus Torvalds         2005-04-16   86  			be32_to_cpu(part->start_block) * (secsize/512),
^1da177e4c3f41 fs/partitions/mac.c    Linus Torvalds         2005-04-16   87  			be32_to_cpu(part->block_count) * (secsize/512));
^1da177e4c3f41 fs/partitions/mac.c    Linus Torvalds         2005-04-16   88  
582940508b5d58 block/partitions/mac.c Rasmus Villemoes       2014-09-16   89  		if (!strncasecmp(part->type, "Linux_RAID", 10))
cc9106247de925 fs/partitions/mac.c    Cesar Eduardo Barros   2010-04-17   90  			state->parts[slot].flags = ADDPART_FLAG_RAID;
^1da177e4c3f41 fs/partitions/mac.c    Linus Torvalds         2005-04-16   91  #ifdef CONFIG_PPC_PMAC
^1da177e4c3f41 fs/partitions/mac.c    Linus Torvalds         2005-04-16   92  		/*
^1da177e4c3f41 fs/partitions/mac.c    Linus Torvalds         2005-04-16   93  		 * If this is the first bootable partition, tell the
^1da177e4c3f41 fs/partitions/mac.c    Linus Torvalds         2005-04-16   94  		 * setup code, in case it wants to make this the root.
^1da177e4c3f41 fs/partitions/mac.c    Linus Torvalds         2005-04-16   95  		 */
e8222502ee6157 fs/partitions/mac.c    Benjamin Herrenschmidt 2006-03-28   96  		if (machine_is(powermac)) {
^1da177e4c3f41 fs/partitions/mac.c    Linus Torvalds         2005-04-16   97  			int goodness = 0;
^1da177e4c3f41 fs/partitions/mac.c    Linus Torvalds         2005-04-16   98  
^1da177e4c3f41 fs/partitions/mac.c    Linus Torvalds         2005-04-16   99  			mac_fix_string(part->processor, 16);
^1da177e4c3f41 fs/partitions/mac.c    Linus Torvalds         2005-04-16  100  			mac_fix_string(part->name, 32);
^1da177e4c3f41 fs/partitions/mac.c    Linus Torvalds         2005-04-16  101  			mac_fix_string(part->type, 32);					
^1da177e4c3f41 fs/partitions/mac.c    Linus Torvalds         2005-04-16  102  		    
^1da177e4c3f41 fs/partitions/mac.c    Linus Torvalds         2005-04-16  103  			if ((be32_to_cpu(part->status) & MAC_STATUS_BOOTABLE)
^1da177e4c3f41 fs/partitions/mac.c    Linus Torvalds         2005-04-16  104  			    && strcasecmp(part->processor, "powerpc") == 0)
^1da177e4c3f41 fs/partitions/mac.c    Linus Torvalds         2005-04-16  105  				goodness++;
^1da177e4c3f41 fs/partitions/mac.c    Linus Torvalds         2005-04-16  106  
^1da177e4c3f41 fs/partitions/mac.c    Linus Torvalds         2005-04-16  107  			if (strcasecmp(part->type, "Apple_UNIX_SVR2") == 0
582940508b5d58 block/partitions/mac.c Rasmus Villemoes       2014-09-16  108  			    || (strncasecmp(part->type, "Linux", 5) == 0
^1da177e4c3f41 fs/partitions/mac.c    Linus Torvalds         2005-04-16  109  			        && strcasecmp(part->type, "Linux_swap") != 0)) {
^1da177e4c3f41 fs/partitions/mac.c    Linus Torvalds         2005-04-16  110  				int i, l;
^1da177e4c3f41 fs/partitions/mac.c    Linus Torvalds         2005-04-16  111  
^1da177e4c3f41 fs/partitions/mac.c    Linus Torvalds         2005-04-16  112  				goodness++;
^1da177e4c3f41 fs/partitions/mac.c    Linus Torvalds         2005-04-16  113  				l = strlen(part->name);
^1da177e4c3f41 fs/partitions/mac.c    Linus Torvalds         2005-04-16  114  				if (strcmp(part->name, "/") == 0)
^1da177e4c3f41 fs/partitions/mac.c    Linus Torvalds         2005-04-16  115  					goodness++;
^1da177e4c3f41 fs/partitions/mac.c    Linus Torvalds         2005-04-16  116  				for (i = 0; i <= l - 4; ++i) {
582940508b5d58 block/partitions/mac.c Rasmus Villemoes       2014-09-16  117  					if (strncasecmp(part->name + i, "root",
^1da177e4c3f41 fs/partitions/mac.c    Linus Torvalds         2005-04-16  118  						     4) == 0) {
^1da177e4c3f41 fs/partitions/mac.c    Linus Torvalds         2005-04-16  119  						goodness += 2;
^1da177e4c3f41 fs/partitions/mac.c    Linus Torvalds         2005-04-16  120  						break;
^1da177e4c3f41 fs/partitions/mac.c    Linus Torvalds         2005-04-16  121  					}
^1da177e4c3f41 fs/partitions/mac.c    Linus Torvalds         2005-04-16  122  				}
582940508b5d58 block/partitions/mac.c Rasmus Villemoes       2014-09-16  123  				if (strncasecmp(part->name, "swap", 4) == 0)
^1da177e4c3f41 fs/partitions/mac.c    Linus Torvalds         2005-04-16  124  					goodness--;
^1da177e4c3f41 fs/partitions/mac.c    Linus Torvalds         2005-04-16  125  			}
^1da177e4c3f41 fs/partitions/mac.c    Linus Torvalds         2005-04-16  126  
^1da177e4c3f41 fs/partitions/mac.c    Linus Torvalds         2005-04-16  127  			if (goodness > found_root_goodness) {
fa7ea87a057958 fs/partitions/mac.c    Timo Warns             2011-02-17  128  				found_root = slot;
^1da177e4c3f41 fs/partitions/mac.c    Linus Torvalds         2005-04-16  129  				found_root_goodness = goodness;
^1da177e4c3f41 fs/partitions/mac.c    Linus Torvalds         2005-04-16  130  			}
^1da177e4c3f41 fs/partitions/mac.c    Linus Torvalds         2005-04-16  131  		}
^1da177e4c3f41 fs/partitions/mac.c    Linus Torvalds         2005-04-16  132  #endif /* CONFIG_PPC_PMAC */
^1da177e4c3f41 fs/partitions/mac.c    Linus Torvalds         2005-04-16  133  	}
^1da177e4c3f41 fs/partitions/mac.c    Linus Torvalds         2005-04-16  134  #ifdef CONFIG_PPC_PMAC
^1da177e4c3f41 fs/partitions/mac.c    Linus Torvalds         2005-04-16  135  	if (found_root_goodness)
1493bf217f7f59 fs/partitions/mac.c    Tejun Heo              2010-05-15 @136  		note_bootable_part(state->bdev->bd_dev, found_root,

:::::: The code at line 136 was first introduced by commit
:::::: 1493bf217f7f59a5d9e2095a7dbcec00fb36ca8b block: use struct parsed_partitions *state universally in partition check code

:::::: TO: Tejun Heo <tj@kernel.org>
:::::: CC: Jens Axboe <jens.axboe@oracle.com>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202107250307.LUIWCpNT-lkp%40intel.com.

--gBBFr7Ir9EOA20Yy
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
xoqr0CqQNsAioSUKnW/AOyv+H2C1GERUNgIA

--gBBFr7Ir9EOA20Yy--
