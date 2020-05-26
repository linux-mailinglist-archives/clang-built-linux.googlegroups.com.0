Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBO6IWP3AKGQEOFP6HQQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 73BB71E1EDD
	for <lists+clang-built-linux@lfdr.de>; Tue, 26 May 2020 11:41:17 +0200 (CEST)
Received: by mail-pg1-x53a.google.com with SMTP id s188sf16052317pgc.17
        for <lists+clang-built-linux@lfdr.de>; Tue, 26 May 2020 02:41:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590486076; cv=pass;
        d=google.com; s=arc-20160816;
        b=YT+9efBN0RYouNid3xJjH2rl7o02XCLSE2zpM6ZN1z3L+LgLU3EsjuDeWC4ZIRDpU0
         m+7ktafjSVerudaJRG4pbCAUK7R1ql4rlYlJ6PXhMlBtdk9ftHXQVRXNsI51BtpP1qQ0
         VfURDH4w8u+9XJvmNnl49eZLJ8+goIvx9FLdnh0gyYlcXJmBJYR43mlT3wN298VGlUXC
         XjS4Q4pBlqsae4s0QkUgnaLbrfMJSOuPWikpPqrhjanQjx6vx0fJW5FlqFjeyFv2Bd5r
         5a/jhxCTamyJvw0ZZPl58907TLcvUiyFTgnXwb7sYKzRDeH7hmYlj2t28hmCEsHNIBHJ
         cJyw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=B3pJj84ouaET0Guu6RS79dBHDLSKV9u+RfbNHi3aCKU=;
        b=CHdRqQtyCNZWtWvGUMmh7kWp+uqB8ederkk4QvOEyLi+Ak60DLQnvM6bnQ9m5WH32c
         ExHLkSgrcA0JH2wklJNLCJQdp1nfAlM0rjJZlRYxx3ksf6B/9jbN9MrbbiKFDbNrf+EL
         RLLYB97RjTLQ4nbX665Xl5HxU4LWpzlxuu0jc240OImy58PIyaIUMQhE3yEyRZAjCD0l
         B3ORBKYHtX/rAdegy0YaM6iKR/igR6XlZ37yPDAuKHT3hFwXhhhKrxckmuP4tcX/oSxj
         92sY2IHHCHvXmRgQG1dvjon6MFRxDKqX6bIUqFTvlyKZwzZ2TeAix0QP92fVcaveUT7b
         f7jA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=B3pJj84ouaET0Guu6RS79dBHDLSKV9u+RfbNHi3aCKU=;
        b=Yin255fy6joPgaQiFUw23nnb8i67CI8BKWuF6CH7/kWgFQ8y/Khs8F+zmrF6V4k+1F
         sYWrwApySCWy0obe3tA6u74+xn/DHp3FfYJEHoOBlmJATQXnY+6bkVnB9cAozIjxZAJH
         Oo5BxB8Oj0OEwaYaBfOjexRBYwvFpTX2MLAw8uRX3gLvRsRUhF4+0hYQezjBYprO1pqS
         zIeKs9kazSlDsVsaH+hdLwXBXklyFzsdnXnV7y3CNr9QIXwAJfLAqE+GWl0Sl+6LNUAC
         TT6QfXtce9TbTfSnkfcaXUP8ntLLadZQECmk4WWK1UDmKyBrkAO2vLHtekTMhXYNxeB1
         A7eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=B3pJj84ouaET0Guu6RS79dBHDLSKV9u+RfbNHi3aCKU=;
        b=MgPg4ucFjTW4We942aBZn87uPL92g5FGtcOllv7U5g+6hYpP0iqb/Om9dlFkRZjP/b
         BsZmfeFFAwOqkKs7FKzQeouCIPv2Riqq2jOmfUPRxJG3MZR5TO939Dym1ml0Z7HkNM56
         e25i/bfoaslvrNdI8r2D5vqEAB8IMOd3yrbpkS3cy9AKdGXdOTQP2du8euruDh94VGdd
         gpk7xIjmXHjjUaaU4cNBDbGRKnpEf9hN05+H3GrFLUGD4Lk5Xgf8jEeYNwzYfJI9yimX
         s7+w8byc2EdgVDomiwF5TPe140mIZo0b1RT85YoROe5fqpRzZxkfjSpJFZH4NBhwDk7O
         bwxQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530TBHCpiYkfyB/w4Xf2pYsTWF8eX7Uu86Melq6TelfXY4noUiz3
	Pt1Ai1Ypa/l0SvjRhAICKXg=
X-Google-Smtp-Source: ABdhPJyzM+kWxusbKbD7ljC/d5qV7EpBORN8vpYODx2W50MQYcdVkyN6+/qObTYPrFFFgkwWJY/5mQ==
X-Received: by 2002:a17:90a:d3ca:: with SMTP id d10mr24102685pjw.42.1590486075639;
        Tue, 26 May 2020 02:41:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:1703:: with SMTP id 3ls3756662pfx.8.gmail; Tue, 26 May
 2020 02:41:15 -0700 (PDT)
X-Received: by 2002:a63:8f46:: with SMTP id r6mr217366pgn.257.1590486075190;
        Tue, 26 May 2020 02:41:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590486075; cv=none;
        d=google.com; s=arc-20160816;
        b=rScPsJim6fRqa+8ggUyPrO3DPOE+8XjRHe5PIvsshAaN6nh3ZH+amjygPnWJCg1MYF
         ZMibYWXNKHVc+EOZFYdr+XwNqN/7kEmIVrPuFEOt8Vn+xeNjmp6y4IORLVfMA7Gu4GFq
         wzESOK+Jpg25CrsAfgKY+s9OO9XwZigorFty8tFKbcixRCJ4YgAbZCNQzKSUfGBVAFXo
         2iPDGD7zHpDY2P+FekpzT2B+6r7GmXWI9KMwUdsKSosLI8s3elf1TkVAeKg3eijHXTeW
         7DQpDMr1XvMDf8fV8EPPpaGrNL26aKvy4o0nK/1JPtc8nfZE1Fz8GFY+At1iffbaoYjj
         ludw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=z3DecxJ9Uv4njdqElCRVwtb++bkU9sEx3vY2Cl/Nvi0=;
        b=07kB1bMNdWzecKfull+ysJCjmjfd60PThX+rEj8HGc+At73N88rkmtNYANCK6gHnwP
         qrlj8PjAk+CA+2mRMFQFFpZoYX0mEglopPKPjFoA5l62T09EOzh34JfXgm2zNY0rF7Ig
         iC3Uni+XJPGKxykAW5Zssj5zGJOHpDXLGle8IOz1zmieAhowRIo68cVsO9h0kNdoLB0b
         KRET2lNO8T0h3gXYxb7TP5C++OR8MktEuPZUApyENasEOZCQsOEZA1ftwOua4EodZTR4
         IsiXIPwlGsiZZ7JBIrUgFTRPunYc5G+CRy4kYXdZ7JfvejPdoaakiur8IUDQOorOzHPZ
         DhYg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga05.intel.com (mga05.intel.com. [192.55.52.43])
        by gmr-mx.google.com with ESMTPS id kb2si541042pjb.1.2020.05.26.02.41.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 May 2020 02:41:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) client-ip=192.55.52.43;
IronPort-SDR: OHu5BeFF5Kg948Vx1yEqzoOx2eI88BWwnfPK5V8vj20NSwIV9mH5CphdflWCor3BkG6+hQ4IKO
 rQ5hZfeIAV1Q==
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 May 2020 02:41:08 -0700
IronPort-SDR: DUBPCsQdVqtXDYYDQAgGQv8XE4uhuVMSvtzwcTptb0vWo93QXd6/BwSBGnQlCb7YPW+UAsJ0D6
 AEoDszgN+7NQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,436,1583222400"; 
   d="gz'50?scan'50,208,50";a="468291015"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by fmsmga006.fm.intel.com with ESMTP; 26 May 2020 02:41:07 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1jdW53-000B0P-QG; Tue, 26 May 2020 17:41:05 +0800
Date: Tue, 26 May 2020 17:40:20 +0800
From: kbuild test robot <lkp@intel.com>
To: Christoph Hellwig <hch@lst.de>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [hch-block:blk-accounting-cleanup 1/16]
 include/linux/blkdev.h:1908:42: error: implicit declaration of function
 'bio_sectors'
Message-ID: <202005261718.2MXyRdmx%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="IS0zKkzwUGydFO0o"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted
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


--IS0zKkzwUGydFO0o
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   git://git.infradead.org/users/hch/block.git blk-accounting-cleanup
head:   426c2d7f0c7434a57d66be949f1c20e87f8f94ac
commit: 6affa383c213074810553ceb6d97493a9404f09c [1/16] block: add disk/bio-based accounting helpers
config: x86_64-allnoconfig (attached as .config)
compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 3393cc4cebf9969db94dc424b7a2b6195589c33b)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        git checkout 6affa383c213074810553ceb6d97493a9404f09c
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>, old ones prefixed by <<):

In file included from arch/x86/kernel/asm-offsets.c:13:
In file included from include/linux/suspend.h:5:
In file included from include/linux/swap.h:9:
In file included from include/linux/memcontrol.h:22:
In file included from include/linux/writeback.h:14:
In file included from include/linux/blk-cgroup.h:23:
>> include/linux/blkdev.h:1908:42: error: implicit declaration of function 'bio_sectors' [-Werror,-Wimplicit-function-declaration]
return disk_start_io_acct(bio->bi_disk, bio_sectors(bio), bio_op(bio));
^
1 error generated.
make[2]: *** [scripts/Makefile.build:100: arch/x86/kernel/asm-offsets.s] Error 1
make[2]: Target '__build' not remade because of errors.
make[1]: *** [Makefile:1141: prepare0] Error 2
make[1]: Target 'prepare' not remade because of errors.
make: *** [Makefile:180: sub-make] Error 2

vim +/bio_sectors +1908 include/linux/blkdev.h

  1894	
  1895	unsigned long disk_start_io_acct(struct gendisk *disk, unsigned int sectors,
  1896			unsigned int op);
  1897	void disk_end_io_acct(struct gendisk *disk, unsigned int op,
  1898			unsigned long start_time);
  1899	
  1900	/**
  1901	 * bio_start_io_acct - start I/O accounting for bio based drivers
  1902	 * @bio:	bio to start account for
  1903	 *
  1904	 * Returns the start time that should be passed back to bio_end_io_acct().
  1905	 */
  1906	static inline unsigned long bio_start_io_acct(struct bio *bio)
  1907	{
> 1908		return disk_start_io_acct(bio->bi_disk, bio_sectors(bio), bio_op(bio));
  1909	}
  1910	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202005261718.2MXyRdmx%25lkp%40intel.com.

--IS0zKkzwUGydFO0o
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
m6JddbNx9R9XmHxUT2oAAA==

--IS0zKkzwUGydFO0o--
