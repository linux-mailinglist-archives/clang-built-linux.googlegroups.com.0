Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBKWP5OCQMGQEKAKW6DQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103b.google.com (mail-pj1-x103b.google.com [IPv6:2607:f8b0:4864:20::103b])
	by mail.lfdr.de (Postfix) with ESMTPS id 02BA739C54F
	for <lists+clang-built-linux@lfdr.de>; Sat,  5 Jun 2021 04:55:41 +0200 (CEST)
Received: by mail-pj1-x103b.google.com with SMTP id v2-20020a17090a9602b029015b0bb8b2b9sf7137530pjo.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 04 Jun 2021 19:55:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622861739; cv=pass;
        d=google.com; s=arc-20160816;
        b=JmlJdOJBnUkIPzgib94s2kd8JuLyqKUmTqqs4k2UFa06O1WKUK7jQogzmsO3sGH2cD
         O5pkgFe5TlSLQuyZYEBby2fepGZCxoUweVlfp2lO7KJCUjap4+0CpnjX/bQ+/mGIlbwT
         RiI8Mk47z9i39PbwxZwDP3Jjs5i7R8p2w1/dsWAy5PV5m+0BIzc2jV5y1pNfEOh+6SfA
         qTcNxdojKQ8/8zOb0J0rCrrr3nBWsmn/wxlNJP3HJe4CFu0pYWEm4bX6zfDS1y3ADkQx
         mNcF+NiCAvslcufuWpdLV65/oMP7BlP/fpEvu7EQWY9BV1akU3dH90XHFuhBashuKlo7
         4cgw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=EMlvmmGYLM7OxPNQTLUMs8dQDvxQVBNfrgcWzBUFJ0c=;
        b=s8g4E/E3WwH0r0ZFVyCzMXnkNlMWB3bkWpyDOevW6uybJ6dtZ/Xmq/QLhf1wUhr8DF
         nNc3zJijZvDrI9zX356G0UALNXsb+VECWo8Yb5zVYhqb7jf5oBjqmS9Jds6NCl5rYBcd
         08m7CuEBl/jhZTyEvYCaBtR5W+FxiVDtsy0k5C/ub04YHoZPaCkthyHZDDa7RhXYyOPA
         gYRmcT95QbOChfn5+wdI3Vg3Eus1+AFjetvJnN+2CoK7Hewf2xRjDAAllw2U8lG3vutu
         yLqxY66iuPG4tDmPtVH0PjMPUEZH9S6w1x0otwyQLWK7q1dl/Gs1FOfjVjxBwRee4SUB
         v2+w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EMlvmmGYLM7OxPNQTLUMs8dQDvxQVBNfrgcWzBUFJ0c=;
        b=Uq/P7geTHf7IWpghKtyiIEHSCTZs8C5iCBUaB9TFBdUjJTRswTP6rP5kEbWbrsVxH5
         eVaoY2MfvOkNjUsR7zClp4j7sEXnGHMjxC4UngZQ6+XJsCPBEerIfJNTeZHf2Xg0k62O
         bK4ndOn/1tAzGaEMFsO961cxqj8lVRrbCH2hrTpOx4GZoXTIIjiSby/pFzaPQu9m8afl
         5Qnv2+/qtAT929weYneiUqYXqVFDdw5KC8xWgh4EMC9FdEHi5VllfibxHqe8/OvZcVPZ
         FG7EAQ9hlBuFdkoLfMH8hrKDbSgiIuX1MY8HeNykVBwl3vf7qG2WqAZFJMQjZuMz7PPv
         ObpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EMlvmmGYLM7OxPNQTLUMs8dQDvxQVBNfrgcWzBUFJ0c=;
        b=qiSJ4Cr3GKaqrK14dSsqjlL7VBXnI8yn0JO5jOo+zvzeVYmAxwBhAyIRb3WS0t1kRf
         kuFqIcy0PqinVw8nrDpv0rr1nP6inVo15Z94xnATDnR/iKXv1rGUUcoUSvM4/I6Cre3z
         rOM571StS6YC369G+aqjS54AX1ItZR6CkQxzKP1CwZqeCguvAt8qtDn0JQQ/7YBuy9Mu
         jYoMvH/n81sBZJYbsO0KTZ1Lg0u3NitSIDgfV3yUvAFFvz3byZQVz5NpVVYDv66tUEKk
         cCyEALm4VMVfzStzKCSvURHbXBW5vz08IsEID2lf3Ekf5MLVn0f3ZrJywrx0paL4uy8L
         oavQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532ulHd9tY4b7hDPhSRsXK/m2po0P6YpfP4A6lMHXhrZITEEFI3V
	rjJws2yh39EjhD93L+e4xcQ=
X-Google-Smtp-Source: ABdhPJwUR2U4bxz0Kn8YPHekrvVjUd1foOAhGZ705PsYAz9o7x2+fMV5ulBVaJqvrjQni3UoO6T+LA==
X-Received: by 2002:a17:90a:a10a:: with SMTP id s10mr7948546pjp.59.1622861739027;
        Fri, 04 Jun 2021 19:55:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:aa8d:: with SMTP id d13ls4840664plr.5.gmail; Fri, 04
 Jun 2021 19:55:38 -0700 (PDT)
X-Received: by 2002:a17:902:a586:b029:fe:459b:2ce0 with SMTP id az6-20020a170902a586b02900fe459b2ce0mr7355165plb.40.1622861738157;
        Fri, 04 Jun 2021 19:55:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622861738; cv=none;
        d=google.com; s=arc-20160816;
        b=DBLsqKn/BOnaaX9+8X1bpNrrnzS1prtH0NT7B5nhIhaTEb0goSIK0JoEux50amXiMy
         g7DA7GLtGLNmCvhqqGPu+5S5RKe22HwhEyGITh6lFN8iJWGVTgXxlQZilyTZop0VGZY/
         wHNifH1JxOKKnKTvT+eEbcBLCtecEKzR9x/hfpCExfwbviihQ/eDGPX6BO7PEYq7YlkA
         nTXK9umRNh0dwQropYPBH7ppfFMFr12GZi0uOwaxCMFiCiaJ12FZciuz/1SI1OSxz6Gx
         +Dk1h0rgSiWsV/zT1tpnWBkQs40EwILXsIkYIaocMiERS9MyrW/OWPj2QaBFB7Ivjvhe
         d9kg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=Yj4J8KGkRI2PyFAcpCM+WQatdQ2KAt8kZKB7noin9/s=;
        b=T3oserbETplvJpB35k/s1uzuIypUZBOz5wNY8FPkWzt5w1xoU02tvBN9eWUEeF9rf2
         ox1iTMIOe6Qvai59U065BHzdoRMaqkuPUilnR4Sg62csOIRgC0lzYwIM8TQreo0fIuDd
         xusJ/Is2hKcXO8mCFlwIA6Fdvw6oE7GiaBixHvGqFFLhLTs362i/DDEbMMaWUtWbb462
         IPNyovtk593Qaa+LThkn+GGw9JrYe94jlA39j7l6NpdSzskZ+3yhVV1hYx6pFy3wrCaw
         FnOAyEwW3BblwGtT2iEDKqDOR1bWb868SYMe240vyPneew7jl7k5K4LXFTi69BMlMtYo
         5zxQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga07.intel.com (mga07.intel.com. [134.134.136.100])
        by gmr-mx.google.com with ESMTPS id u31si188303pfg.3.2021.06.04.19.55.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 04 Jun 2021 19:55:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) client-ip=134.134.136.100;
IronPort-SDR: 9zWDEu+p1TTzn9VW1orgN31kFWO1oO8oKZ7bxehfRfn6q71sRIJDIm85cmfyi/ivKCKjUqCSf/
 KBLov1s4ALHQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10005"; a="268266897"
X-IronPort-AV: E=Sophos;i="5.83,249,1616482800"; 
   d="gz'50?scan'50,208,50";a="268266897"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 Jun 2021 19:55:37 -0700
IronPort-SDR: Tz87KBjjtKt5RFIK1EbokVDwSZ02pW/T61JosdfINXoj8GvmEE+yPy0K1uRZU3NeWu/XkS6zv2
 +78W3CrncTsQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,249,1616482800"; 
   d="gz'50?scan'50,208,50";a="448475424"
Received: from lkp-server02.sh.intel.com (HELO 1ec8406c5392) ([10.239.97.151])
  by fmsmga008.fm.intel.com with ESMTP; 04 Jun 2021 19:55:33 -0700
Received: from kbuild by 1ec8406c5392 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lpMTF-0007Eo-0R; Sat, 05 Jun 2021 02:55:33 +0000
Date: Sat, 5 Jun 2021 10:55:06 +0800
From: kernel test robot <lkp@intel.com>
To: Satya Tangirala <satyat@google.com>,
	"Theodore Y . Ts'o" <tytso@mit.edu>,
	Jaegeuk Kim <jaegeuk@kernel.org>,
	Eric Biggers <ebiggers@kernel.org>, Chao Yu <yuchao0@huawei.com>,
	Chao Yu <chao@kernel.org>, Jens Axboe <axboe@kernel.dk>,
	"Darrick J . Wong" <darrick.wong@oracle.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org, linux-fscrypt@vger.kernel.org,
	linux-f2fs-devel@lists.sourceforge.net, linux-xfs@vger.kernel.org
Subject: Re: [PATCH v9 5/9] block: Make bio_iov_iter_get_pages() respect
 bio_required_sector_alignment()
Message-ID: <202106051056.tT5x6yRt-lkp@intel.com>
References: <20210604210908.2105870-6-satyat@google.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="PNTmBPCT7hxwcZjr"
Content-Disposition: inline
In-Reply-To: <20210604210908.2105870-6-satyat@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted
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


--PNTmBPCT7hxwcZjr
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Satya,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on block/for-next]
[also build test ERROR on ext4/dev f2fs/dev-test linus/master v5.13-rc4 next-20210604]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Satya-Tangirala/add-support-for-direct-I-O-with-fscrypt-using-blk-crypto/20210605-051023
base:   https://git.kernel.org/pub/scm/linux/kernel/git/axboe/linux-block.git for-next
config: powerpc64-randconfig-r025-20210604 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 5c0d1b2f902aa6a9cf47cc7e42c5b83bb2217cf9)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc64 cross compiling tool for clang build
        # apt-get install binutils-powerpc64-linux-gnu
        # https://github.com/0day-ci/linux/commit/eea1225f680da16dce01bfb2914b9e8b78de298d
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Satya-Tangirala/add-support-for-direct-I-O-with-fscrypt-using-blk-crypto/20210605-051023
        git checkout eea1225f680da16dce01bfb2914b9e8b78de298d
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   In file included from block/bio.c:5:
   In file included from include/linux/mm.h:9:
   In file included from include/linux/mmdebug.h:5:
   In file included from include/linux/bug.h:5:
   In file included from arch/powerpc/include/asm/bug.h:109:
   In file included from include/asm-generic/bug.h:20:
   In file included from include/linux/kernel.h:12:
   In file included from include/linux/bitops.h:32:
   In file included from arch/powerpc/include/asm/bitops.h:62:
   arch/powerpc/include/asm/barrier.h:49:9: warning: '__lwsync' macro redefined [-Wmacro-redefined]
   #define __lwsync()      __asm__ __volatile__ (stringify_in_c(LWSYNC) : : :"memory")
           ^
   <built-in>:309:9: note: previous definition is here
   #define __lwsync __builtin_ppc_lwsync
           ^
>> block/bio.c:1131:10: error: implicit declaration of function 'bio_required_sector_alignment' [-Werror,-Wimplicit-function-declaration]
                                        bio_required_sector_alignment(bio));
                                        ^
   1 warning and 1 error generated.


vim +/bio_required_sector_alignment +1131 block/bio.c

  1083	
  1084	/**
  1085	 * bio_iov_iter_get_pages - add user or kernel pages to a bio
  1086	 * @bio: bio to add pages to
  1087	 * @iter: iov iterator describing the region to be added
  1088	 *
  1089	 * This takes either an iterator pointing to user memory, or one pointing to
  1090	 * kernel pages (BVEC iterator). If we're adding user pages, we pin them and
  1091	 * map them into the kernel. On IO completion, the caller should put those
  1092	 * pages. For bvec based iterators bio_iov_iter_get_pages() uses the provided
  1093	 * bvecs rather than copying them. Hence anyone issuing kiocb based IO needs
  1094	 * to ensure the bvecs and pages stay referenced until the submitted I/O is
  1095	 * completed by a call to ->ki_complete() or returns with an error other than
  1096	 * -EIOCBQUEUED. The caller needs to check if the bio is flagged BIO_NO_PAGE_REF
  1097	 * on IO completion. If it isn't, then pages should be released.
  1098	 *
  1099	 * The function tries, but does not guarantee, to pin as many pages as
  1100	 * fit into the bio, or are requested in @iter, whatever is smaller. If
  1101	 * MM encounters an error pinning the requested pages, it stops. Error
  1102	 * is returned only if 0 pages could be pinned. It also ensures that the number
  1103	 * of sectors added to the bio is aligned to bio_required_sector_alignment().
  1104	 *
  1105	 * It's intended for direct IO, so doesn't do PSI tracking, the caller is
  1106	 * responsible for setting BIO_WORKINGSET if necessary.
  1107	 */
  1108	int bio_iov_iter_get_pages(struct bio *bio, struct iov_iter *iter)
  1109	{
  1110		int ret = 0;
  1111		unsigned int aligned_sectors;
  1112	
  1113		if (iov_iter_is_bvec(iter)) {
  1114			if (bio_op(bio) == REQ_OP_ZONE_APPEND)
  1115				return bio_iov_bvec_set_append(bio, iter);
  1116			return bio_iov_bvec_set(bio, iter);
  1117		}
  1118	
  1119		do {
  1120			if (bio_op(bio) == REQ_OP_ZONE_APPEND)
  1121				ret = __bio_iov_append_get_pages(bio, iter);
  1122			else
  1123				ret = __bio_iov_iter_get_pages(bio, iter);
  1124		} while (!ret && iov_iter_count(iter) && !bio_full(bio, 0));
  1125	
  1126		/*
  1127		 * Ensure that number of sectors in bio is aligned to
  1128		 * bio_required_sector_align()
  1129		 */
  1130		aligned_sectors = round_down(bio_sectors(bio),
> 1131					     bio_required_sector_alignment(bio));
  1132		iov_iter_revert(iter, (bio_sectors(bio) - aligned_sectors) << SECTOR_SHIFT);
  1133		bio_truncate(bio, aligned_sectors << SECTOR_SHIFT);
  1134	
  1135		/* don't account direct I/O as memory stall */
  1136		bio_clear_flag(bio, BIO_WORKINGSET);
  1137		return bio->bi_vcnt ? 0 : ret;
  1138	}
  1139	EXPORT_SYMBOL_GPL(bio_iov_iter_get_pages);
  1140	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202106051056.tT5x6yRt-lkp%40intel.com.

--PNTmBPCT7hxwcZjr
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
5Zn9D4qbKWqHAgIA

--PNTmBPCT7hxwcZjr--
