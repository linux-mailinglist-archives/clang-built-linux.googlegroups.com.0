Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB6O6XLVAKGQENLSBGBI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53f.google.com (mail-pg1-x53f.google.com [IPv6:2607:f8b0:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id 5827188B1B
	for <lists+clang-built-linux@lfdr.de>; Sat, 10 Aug 2019 13:50:19 +0200 (CEST)
Received: by mail-pg1-x53f.google.com with SMTP id k20sf61266829pgg.15
        for <lists+clang-built-linux@lfdr.de>; Sat, 10 Aug 2019 04:50:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565437818; cv=pass;
        d=google.com; s=arc-20160816;
        b=N2aYyAoV6Im3yI8O8lFksKyNsUx6xOB06UJ5wt9BzIvoXjKo6Ne0NIuQm+P00pAUcD
         3aO0QGksuzroRBsMJXrVrypH6R7DlrS5Z4lC5dtQN/5o1BGAKovSMNovVMl4kzGwpcQN
         CTouIOzbOx7BmVzUpXmv0GF3F5Dn+VtZBzMCqgIlWiH7KgpWKOlnaSg1VfuTDgbjCQOV
         VFANhE996kAtYyaKRZsTZWxoNaUdADbl5Quf0tdOtQjdi/FAavseubK78Aek4jT6+2ja
         LBvG4wVgpyTjcUpOYwpyW6IofdiUvcDysgOmbGgESc7+ujZ1S73RWxDNHrQq/rBvyKVT
         wSog==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=u434f8WQve4rTpqx+v22l76BJOwM2rf45QSbrCkiaIU=;
        b=BLBUnmn3QAnEQlB4fX7GTeNEo9vdoomLMt2ZN7IikdaTSFNLrYjOa5AT+N/wZRByXx
         Di3QehmCy1SeNEewQF2iAsEkLCIxCn6kTTD6ql6dBH63Zxx7TKkC8FSNxPr9JO2d/Hap
         lFBeXJu5XTfW8KFbg8Jli/B+UbwIHoivT4BTq1iJO5o09qZYW4fRZlwH/n4IG/smO2Ln
         6kWFSK9HFEWWVS7O5GnE9uLO0cYUcJCaltYo59DSY9VrO7kVp4NF1Rg5goKTxpmrIzpq
         Gt5m8VUvuqNDCwHFttN63FMfwqXo7HRKw/6hnGx9pZVyqHE6ryzzvFFnoe3rr45zdBPR
         qRlQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=u434f8WQve4rTpqx+v22l76BJOwM2rf45QSbrCkiaIU=;
        b=jvt7JyxAFA6+fa2+55X7WNd5BdncJeEypM6Tkt10yLmVVQLL9TS6OS5redTmM8HwJ4
         OfffmBOS7/CKpCgJVWUL2UCfrIhylxZMuXBlnqxoTEPTwGwPy13MkDqqcAgVA+pPNnFj
         du7a3ufa+kh/DoNiPC7viictkk2phoOtA6HEn/v/wG3Z82wFWqQach5xGMa7pkaOb0Lm
         AMHmwEhb8pvxLAv51xrHDPdyPn69klGSeX9OFUIvnw7/rseVNEaoKsnwH3xQ+hnqwXic
         V+zDnoVjcwlyIEQ2rdPmp3mM03+7KHdKhTFLt53n1ra44cxWO4uhihbxdoSp904LzHxK
         TaMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=u434f8WQve4rTpqx+v22l76BJOwM2rf45QSbrCkiaIU=;
        b=Q+B0l25vHeXVo6O9BvXtq6dBmRkjKfpkcRR3KcfTSEzRyo59aIiudPugMSOTjvuHJd
         0ecCDhGhYyYpshxP2tkBlCULAugLwBj3op2j7LJzevJwy1XiCzAITuniKvTwXz3lB120
         4xbUokr8IByLrxzKtpB/z9aWiGmNnui+OC8YhF26fL444O0LqM0mxF8EdHX3r8Z9Ifoe
         VphCCy6zdHn9w99YJBnJjwxCjfzKwY5Nk3pa2pfj2vXqcIg1G2wPhBC1ewf5ASTyW0Bp
         L+hqQoiDSUkOQtUIQGQNoRHsVnFOpm1dRB2y9xOyxXe+X9k4dimNXvY/yZpWe25sSn55
         XTgA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVte1S9ZeL+XxxpffKpA2BpLHPRh4mF9VEnIY0eJNp/IxmdlQqf
	6KsJ14qbJGLd74BYPR7BJ5Q=
X-Google-Smtp-Source: APXvYqyxarOWzPifg7UfAcz4AfRpaPnd6Jho0R157ezmy66OVSZF3tFsaAW1baz8VeBfUOV16SgJvw==
X-Received: by 2002:a65:56c1:: with SMTP id w1mr14975965pgs.395.1565437817927;
        Sat, 10 Aug 2019 04:50:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:800d:: with SMTP id j13ls23331480pfi.12.gmail; Sat, 10
 Aug 2019 04:50:17 -0700 (PDT)
X-Received: by 2002:a62:2ad3:: with SMTP id q202mr27192975pfq.161.1565437817623;
        Sat, 10 Aug 2019 04:50:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565437817; cv=none;
        d=google.com; s=arc-20160816;
        b=kv5Mkqr2n0SVYeMWAADrGYpNOxl4qavmDUqU5ilmo4SA9iNd5puSR1FQO9AejTScC4
         677o9wZUm6aDaln76S79Buk11ZBlJ0/xqr/tcLf7Q7Lp4lGGqR2OXAnebfaWUtHEHDWA
         YpLJvTrBJaECnPs78B7kAacUGcc1B2eoZLCT18c+C2sQ4GG/d4buX3/I2mwzsxGX6/1N
         X52ASDogdDekB+1zK7v0g5xLwDixvkdKEXyLsWlmwcCzbYBMkjgeTOxGaXeht7wJgPa5
         4hv4gqxHln5/7wLUbbe6t8SdKWI+EuZYZA47BtPW+k2Pc6I8bH4m1EHzWO+Ss2Q1X9Dt
         Jljw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=299OTdU+NXQj/7WjF5AKurgIhiYM1+gbiqP+oWmKRn4=;
        b=XdCodScQfTXhLbpgZYNk1NQ4ClR421Xot85knMtMyd9hw2q+bJ1EfqCx5OLDSOQ+EA
         YwzRPoDCdnquEX7qUT2k4CEO2/a4m2s0mOwMrmWX9Vv25JJhzD2Mx9Lk2CtPctkcNn5c
         iRK1WAJhq5wiyV+VYIP1re+Nv/c08/ck3yBdIpt1rFdyTOZ4LlClu4rQ5EuliiTET+S7
         9GN6QlYbKKKzcJJNIu3mx1y45k/DuI1rJAsXJd8xtIdw+dJBu/lCbIt9gBTB9rzsT8lm
         F58CRiDrwL/u4TX77tjfUuMm4YxN5lUW7ZtDM6YUDbQZppbdrkD/kWKci0DH4zhca8UC
         Koxg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga05.intel.com (mga05.intel.com. [192.55.52.43])
        by gmr-mx.google.com with ESMTPS id b12si3610275pfd.4.2019.08.10.04.50.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 10 Aug 2019 04:50:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) client-ip=192.55.52.43;
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 10 Aug 2019 04:50:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,369,1559545200"; 
   d="scan'208";a="180387661"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by orsmga006.jf.intel.com with ESMTP; 10 Aug 2019 04:50:15 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1hwPt1-0000dE-CZ; Sat, 10 Aug 2019 19:50:15 +0800
Date: Sat, 10 Aug 2019 19:50:10 +0800
From: kbuild test robot <lkp@intel.com>
To: kbuild@01.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: [linux-review:UPDATE-20190804-173729/Masahiro-Yamada/kconfig-fix-missing-choice-values-in-auto-conf/20190714-164602
 1/1] scripts/kconfig/confdata.c:851:28: error: use of undeclared identifier
 'SYMBOL_WRITTEN'
Message-ID: <201908101906.U5Awls9d%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
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

CC: kbuild-all@01.org
TO: "M. Vefa Bicakci" <m.v.b@runbox.com>
CC: 0day robot <lkp@intel.com>

tree:   https://github.com/0day-ci/linux/commits/UPDATE-20190804-173729/Masahiro-Yamada/kconfig-fix-missing-choice-values-in-auto-conf/20190714-164602
head:   0b1b1ed3a38ab5e29ab0c817906052af07ca519b
commit: 0b1b1ed3a38ab5e29ab0c817906052af07ca519b [1/1] kconfig: fix missing choice values in auto.conf
config: powerpc-defconfig
compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f77a08968c99a8172cbf2ccdd0f)
reproduce:
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        git checkout 0b1b1ed3a38ab5e29ab0c817906052af07ca519b
        make.cross ARCH=powerpc  defconfig
        make.cross ARCH=powerpc 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> scripts/kconfig/confdata.c:851:28: error: use of undeclared identifier 'SYMBOL_WRITTEN'
                   if (sym && (sym->flags & SYMBOL_WRITTEN))
                                            ^
   scripts/kconfig/confdata.c:852:19: error: use of undeclared identifier 'SYMBOL_WRITTEN'
                           sym->flags &= ~SYMBOL_WRITTEN;
                                          ^
   2 errors generated.
   make[2]: *** [scripts/kconfig/confdata.o] Error 1
   make[2]: Target 'defconfig' not remade because of errors.
   make[1]: *** [defconfig] Error 2
   make: *** [sub-make] Error 2
   1 real  0 user  0 sys  60.44% cpu 	make defconfig
--
>> scripts/kconfig/confdata.c:851:28: error: use of undeclared identifier 'SYMBOL_WRITTEN'
                   if (sym && (sym->flags & SYMBOL_WRITTEN))
                                            ^
   scripts/kconfig/confdata.c:852:19: error: use of undeclared identifier 'SYMBOL_WRITTEN'
                           sym->flags &= ~SYMBOL_WRITTEN;
                                          ^
   2 errors generated.
   make[2]: *** [scripts/kconfig/confdata.o] Error 1
   make[2]: Target 'oldconfig' not remade because of errors.
   make[1]: *** [oldconfig] Error 2
   make: *** [sub-make] Error 2
   1 real  0 user  0 sys  61.09% cpu 	make oldconfig
--
>> scripts/kconfig/confdata.c:851:28: error: use of undeclared identifier 'SYMBOL_WRITTEN'
                   if (sym && (sym->flags & SYMBOL_WRITTEN))
                                            ^
   scripts/kconfig/confdata.c:852:19: error: use of undeclared identifier 'SYMBOL_WRITTEN'
                           sym->flags &= ~SYMBOL_WRITTEN;
                                          ^
   2 errors generated.
   make[2]: *** [scripts/kconfig/confdata.o] Error 1
   make[2]: Target 'olddefconfig' not remade because of errors.
   make[1]: *** [olddefconfig] Error 2
   make: *** [sub-make] Error 2
   2 real  0 user  0 sys  60.73% cpu 	make olddefconfig

vim +/SYMBOL_WRITTEN +851 scripts/kconfig/confdata.c

   842	
   843	static void conf_clear_written_flag(void)
   844	{
   845		struct menu *menu;
   846		struct symbol *sym;
   847	
   848		menu = rootmenu.list;
   849		while (menu) {
   850			sym = menu->sym;
 > 851			if (sym && (sym->flags & SYMBOL_WRITTEN))
   852				sym->flags &= ~SYMBOL_WRITTEN;
   853	
   854			if (menu->list) {
   855				menu = menu->list;
   856				continue;
   857			}
   858	
   859			if (menu->next) {
   860				menu = menu->next;
   861			} else {
   862				while ((menu = menu->parent)) {
   863					if (menu->next) {
   864						menu = menu->next;
   865						break;
   866					}
   867				}
   868			}
   869		}
   870	}
   871	

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201908101906.U5Awls9d%25lkp%40intel.com.
