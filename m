Return-Path: <clang-built-linux+bncBAABBUUG2T3AKGQEVCDKJTY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43e.google.com (mail-wr1-x43e.google.com [IPv6:2a00:1450:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 101A61EA502
	for <lists+clang-built-linux@lfdr.de>; Mon,  1 Jun 2020 15:32:03 +0200 (CEST)
Received: by mail-wr1-x43e.google.com with SMTP id p9sf3941612wrx.10
        for <lists+clang-built-linux@lfdr.de>; Mon, 01 Jun 2020 06:32:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591018322; cv=pass;
        d=google.com; s=arc-20160816;
        b=FVsD2HLMfhcwPfOQGOKfWQt31P21/N0k1EzAIKJbZocOld+oFSCfzfH+mPhlC9+oC8
         XSWzL0x8V986AYqUU6ExAv+GICzMJOgQ8z7XHKGJBY/xtnrLjn3Q3QN8R0nvZ1HkEpHx
         Uy1Jze2gY/PY4qmbQoGO26ctoLDIWD6Yv0lxb3TpS5I7eypSaIAOBCq+/b+mUzS8A7hf
         Tdunwr+dJj5+BWdWRF8vqo+v/WdbIksp4Q9WdiOLOgZrSIDgzSKUJkPhn8/DL/4NfjOu
         zBFCXJuvtqiKQUmxwUq1A+PHbr8SYowLK5GXnbmKqF/YYZ83eTExpgZJnVkOU+WqMfIW
         OFIg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=LByUQ+Kbnh4jfjGMBChgaNZCckoIDejklPwjohwXSE8=;
        b=Vmd/+D+2t9zY6YQUqAkecaXxfzT4Lh13xO/aEGdtXDyi4ycDgWHEr2BJOX0qbXVKB1
         PuWMLK19VBU5PTfgwvk3CMzsGoeF4PvIxL1n6XhJJxeN7eb5Sx0jFJkewoLZKmsCUfoS
         xISRiyaysmLtB0yr+vWg72PuAmq34chn7GYs31qcZkcG6PEHcqx0jugUnPB+6jHZiDwg
         rRQYjJnn6wF2KLTWbTbiC0auaqQR92D8iff93iNPkBNgJq3j7SgPtswaNgse28x8SnD5
         vmpkZnid6AcUXlElOLqFjf63Ydebcvgt6ihwXtH+YUY+HexNfPDukIHLlHAXfW6ysX5Y
         N45Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of roberto.sassu@huawei.com designates 185.176.76.210 as permitted sender) smtp.mailfrom=roberto.sassu@huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LByUQ+Kbnh4jfjGMBChgaNZCckoIDejklPwjohwXSE8=;
        b=LK7t90rjkWItGyl9eEAL/B6+UcEC0/lS0yyG5vyEifhQOEPchQpx1sNs6yAqZ1y3Xu
         zAy9kSCyKJ6C8XNwW57lGvfxmCalKUV98SGhjc3igRuDZGMDR/2h8sDyyJwj940+6B1j
         3ixX8oHW3HqX8XwrTD1HfNTdYJlLPktDmljmZwKNqXYNXyEz16Hzj8RJVYyU27H8ggpx
         KHDgd/rA9PC7/EjTUFlmZdZRR8Vt8xWQDxKkX/QeuL7L7hEB7AVbKBFfTgjjfw987OKq
         eL3fQ5sEswdPF3dVaGX6uGAMst6ZTIWvQlbK1xy5VmZC7UVQpd1NZzaEmHpQSpniJK2z
         Am/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LByUQ+Kbnh4jfjGMBChgaNZCckoIDejklPwjohwXSE8=;
        b=n9/qT19sape2PBlMD9XLBRzYElcHY31/bxXzciulZZt62yOUbk+f2f6B6dC3ZVqDGf
         ILD7/eOado0BO0Pt9vxAxfihbqOfrOmzNnN+Zdxzuzc2rf99v/QheDZNHOoj/HDfGuOu
         HiBb1tHSNft0kt1t+SVr4Id0pO7yuZ6yZzx5lnM6yH+WPRhwagG4C2YaX35eiY3hBkSh
         1QAHXd7REWNt12aH9/ehOYsZSSLlHpm2QQesf5fH7DUUUBOKVpeCmjM6VTTkhirbY3Cv
         xSZwBuJgw3blV1KB2S0u6CF3+sOVv9x4qHDWVbKyJtP3OyZ11lvQ8C0fjsmsXNNQTDCA
         iCDw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530fRgnIRtgpU6bBWyrs0SzD9ZUDYkMlL+MofeDJlu2qL9bnl1Nh
	jckPHdFnXCBBRcWhL8YJomI=
X-Google-Smtp-Source: ABdhPJzMHKixmDkWZGbfKrqvOoL5S3J4ZRRr9CIwVTdZX7N4IfIrufS1VVqfhKjdiy3h677EKwZJcA==
X-Received: by 2002:a7b:cb93:: with SMTP id m19mr10703358wmi.165.1591018322725;
        Mon, 01 Jun 2020 06:32:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:c959:: with SMTP id i25ls7533200wml.2.gmail; Mon, 01 Jun
 2020 06:32:02 -0700 (PDT)
X-Received: by 2002:a1c:7305:: with SMTP id d5mr22538455wmb.85.1591018322243;
        Mon, 01 Jun 2020 06:32:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591018322; cv=none;
        d=google.com; s=arc-20160816;
        b=ui8GXj5VpUbN1yeFfmJu5FHUBZ3F9xZKzbp48jD94s9dfszpjq3/OzjdCbiAdsOBzE
         3+PBO6Hbsdl0csnNWUMDRmvv8gDz+XQOfOu+aqqj7/aq4RIgsmz/vTESVddKxk0eTRn/
         FyyDwTViMPJ0JrcXaEIZUUrxgRon2ZKWi1Y9pj7jTQ9y4YDm0pyz0rYbsA8ORK5Yo1oD
         61///njWnM/uQhVIRDJYfkTZHv/290Ng4uh0H+PGzWecgDWoReFeD+bQeAjDCyDHqeC8
         +sZmRJ70ma8dP/X+invts1gRJfJypNz2GW2bNAAZ5gFH4NYyCFGZIvbsdir7bkO++jd3
         34vQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from;
        bh=2hKU7BAIRqBnXvHC0Iqsf6VVs7lpcwIHtuBpJqQCruU=;
        b=jsTETQwwWVncPPZ0hoP2Gl3AfKTsGw6/tpdW64+7s8O9/TDZLfNfOAJfLsMJlxGwaa
         OnW33VQv041FzYCPrp6gWKlz5rdv4vrGAn2a+QAkQpk/xlL1CwD7ESiO64l50J/1SrXb
         UzzmzUqzmrk8yF0xDOA0Qnid0hRRglTIB4LJcnaTbY/XyiC9qcbapRYryQNXcnw6wp4D
         raMWnftADjWJiIsVgVRe9yMNNoo3+hqJ6cOCbWTTtubMehoxi2xoPU695ccMwbG+bS93
         N+c5q1bCK9sF1yJkwxOX9uRMDutrIME6Cd3vK5ZSmz7zlUGnFqvTQY92SHI8U2AmndSb
         p9Ew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of roberto.sassu@huawei.com designates 185.176.76.210 as permitted sender) smtp.mailfrom=roberto.sassu@huawei.com
Received: from huawei.com (lhrrgout.huawei.com. [185.176.76.210])
        by gmr-mx.google.com with ESMTPS id z18si406936wml.2.2020.06.01.06.32.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Jun 2020 06:32:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of roberto.sassu@huawei.com designates 185.176.76.210 as permitted sender) client-ip=185.176.76.210;
Received: from lhreml708-chm.china.huawei.com (unknown [172.18.7.107])
	by Forcepoint Email with ESMTP id D8C7F830D4BD72C4AD55;
	Mon,  1 Jun 2020 14:32:01 +0100 (IST)
Received: from fraeml701-chm.china.huawei.com (10.206.15.50) by
 lhreml708-chm.china.huawei.com (10.201.108.57) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1913.5; Mon, 1 Jun 2020 14:32:01 +0100
Received: from fraeml714-chm.china.huawei.com (10.206.15.33) by
 fraeml701-chm.china.huawei.com (10.206.15.50) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1913.5; Mon, 1 Jun 2020 15:32:00 +0200
Received: from fraeml714-chm.china.huawei.com ([10.206.15.33]) by
 fraeml714-chm.china.huawei.com ([10.206.15.33]) with mapi id 15.01.1913.007;
 Mon, 1 Jun 2020 15:32:00 +0200
From: Roberto Sassu <roberto.sassu@huawei.com>
To: kbuild test robot <lkp@intel.com>
CC: "kbuild-all@lists.01.org" <kbuild-all@lists.01.org>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
	Mimi Zohar <zohar@linux.ibm.com>, "linux-crypto@vger.kernel.org"
	<linux-crypto@vger.kernel.org>, "linux-integrity@vger.kernel.org"
	<linux-integrity@vger.kernel.org>, Silviu Vlasceanu
	<Silviu.Vlasceanu@huawei.com>
Subject: RE: [linux-next:master 2476/12912]
 security/integrity/ima/ima_crypto.c:575:12: warning: stack frame size of 1152
 bytes in function 'ima_calc_field_array_hash_tfm'
Thread-Topic: [linux-next:master 2476/12912]
 security/integrity/ima/ima_crypto.c:575:12: warning: stack frame size of 1152
 bytes in function 'ima_calc_field_array_hash_tfm'
Thread-Index: AQHWM51OJrrrIQIHxEWw6O47bQoN8KjDxjoQ
Date: Mon, 1 Jun 2020 13:32:00 +0000
Message-ID: <9dbec9465bda4f8995a42593eb0db010@huawei.com>
References: <202005270415.1CwCqOaL%lkp@intel.com>
In-Reply-To: <202005270415.1CwCqOaL%lkp@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.220.69.111]
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-CFilter-Loop: Reflected
X-Original-Sender: roberto.sassu@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of roberto.sassu@huawei.com designates 185.176.76.210 as
 permitted sender) smtp.mailfrom=roberto.sassu@huawei.com
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

> From: kbuild test robot [mailto:lkp@intel.com]
> security/integrity/ima/ima_crypto.c:575:12: warning: stack frame size of
> 1152 bytes in function 'ima_calc_field_array_hash_tfm'
> 
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
> master
> head:   b0523c7b1c9d0edcd6c0fe6d2cb558a9ad5c60a8
> commit: 1ea973df6e2166d1a576cabe5d08925d3261ff9d [2476/12912] ima:
> Calculate and extend PCR with digests in ima_template_entry
> config: mips-randconfig-r012-20200526 (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project
> 3393cc4cebf9969db94dc424b7a2b6195589c33b)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-
> tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install mips cross compiling tool for clang build
>         # apt-get install binutils-mips-linux-gnu
>         git checkout 1ea973df6e2166d1a576cabe5d08925d3261ff9d
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross
> ARCH=mips
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>, old ones prefixed by <<):
> 
> >> security/integrity/ima/ima_crypto.c:575:12: warning: stack frame size of
> 1152 bytes in function 'ima_calc_field_array_hash_tfm' [-Wframe-larger-
> than=]
> static int ima_calc_field_array_hash_tfm(struct ima_field_data *field_data,
> ^
> 1 warning generated.

It seems that the problem is caused by the definition of
 SHASH_DESC_ON_STACK:

+#define SHASH_DESC_ON_STACK(shash, ctx)                                  \
+       char __##shash##_desc[sizeof(struct shash_desc) +         \
+               crypto_shash_descsize(ctx)] CRYPTO_MINALIGN_ATTR; \

CRYPTO_MINALIGN_ATTR is equal to __attribute__ ((__aligned__(128))).

It is defined in include/linux/crypto.h:

#define CRYPTO_MINALIGN ARCH_KMALLOC_MINALIGN

#define CRYPTO_MINALIGN_ATTR __attribute__ ((__aligned__(CRYPTO_MINALIGN)))


I found in include/linux/slab.h:

#if defined(ARCH_DMA_MINALIGN) && ARCH_DMA_MINALIGN > 8
#define ARCH_KMALLOC_MINALIGN ARCH_DMA_MINALIGN
#define KMALLOC_MIN_SIZE ARCH_DMA_MINALIGN
#define KMALLOC_SHIFT_LOW ilog2(ARCH_DMA_MINALIGN)
#else
#define ARCH_KMALLOC_MINALIGN __alignof__(unsigned long long)
#endif

If I set ARCH_KMALLOC_MINALIGN to __alignof__(unsigned long long)
the warning message disappears.

Herbert, can you please have a look?

Thanks

Roberto

HUAWEI TECHNOLOGIES Duesseldorf GmbH, HRB 56063
Managing Director: Li Peng, Li Jian, Shi Yanli

> vim +/ima_calc_field_array_hash_tfm +575
> security/integrity/ima/ima_crypto.c
> 
> 3bcced39ea7d1b0 Dmitry Kasatkin 2014-02-26  571
> 3323eec921efd81 Mimi Zohar      2009-02-04  572  /*
> a71dc65d30a4724 Roberto Sassu   2013-06-07  573   * Calculate the hash of
> template data
> 3323eec921efd81 Mimi Zohar      2009-02-04  574   */
> a71dc65d30a4724 Roberto Sassu   2013-06-07 @575  static int
> ima_calc_field_array_hash_tfm(struct ima_field_data *field_data,
> 7ca79645a1f8837 Roberto Sassu   2020-03-25  576
> 		 struct ima_template_entry *entry,
> 6d94809af6b0830 Roberto Sassu   2020-03-25  577
> 		 int tfm_idx)
> 3323eec921efd81 Mimi Zohar      2009-02-04  578  {
> 6d94809af6b0830 Roberto Sassu   2020-03-25  579
> 	SHASH_DESC_ON_STACK(shash, ima_algo_array[tfm_idx].tfm);
> 7ca79645a1f8837 Roberto Sassu   2020-03-25  580  	struct
> ima_template_desc *td = entry->template_desc;
> 7ca79645a1f8837 Roberto Sassu   2020-03-25  581  	int num_fields =
> entry->template_desc->num_fields;
> a71dc65d30a4724 Roberto Sassu   2013-06-07  582  	int rc, i;
> 3323eec921efd81 Mimi Zohar      2009-02-04  583
> 6d94809af6b0830 Roberto Sassu   2020-03-25  584  	shash->tfm =
> ima_algo_array[tfm_idx].tfm;
> 3323eec921efd81 Mimi Zohar      2009-02-04  585
> 357aabed626fe3f Behan Webster   2014-04-04  586  	rc =
> crypto_shash_init(shash);
> a71dc65d30a4724 Roberto Sassu   2013-06-07  587  	if (rc != 0)
> a71dc65d30a4724 Roberto Sassu   2013-06-07  588  		return rc;
> a71dc65d30a4724 Roberto Sassu   2013-06-07  589
> a71dc65d30a4724 Roberto Sassu   2013-06-07  590  	for (i = 0; i <
> num_fields; i++) {
> e3b64c268b485f5 Roberto Sassu   2014-02-03  591  		u8
> buffer[IMA_EVENT_NAME_LEN_MAX + 1] = { 0 };
> e3b64c268b485f5 Roberto Sassu   2014-02-03  592  		u8
> *data_to_hash = field_data[i].data;
> e3b64c268b485f5 Roberto Sassu   2014-02-03  593  		u32 datalen
> = field_data[i].len;
> 98e1d55d033eed2 Andreas Steffen 2016-12-19  594  		u32
> datalen_to_hash =
> 98e1d55d033eed2 Andreas Steffen 2016-12-19  595
> 	    !ima_canonical_fmt ? datalen : cpu_to_le32(datalen);
> e3b64c268b485f5 Roberto Sassu   2014-02-03  596
> b6f8f16f41d9286 Roberto Sassu   2013-11-08  597  		if
> (strcmp(td->name, IMA_TEMPLATE_IMA_NAME) != 0) {
> 357aabed626fe3f Behan Webster   2014-04-04  598  			rc =
> crypto_shash_update(shash,
> 98e1d55d033eed2 Andreas Steffen 2016-12-19  599
> 			(const u8 *) &datalen_to_hash,
> 98e1d55d033eed2 Andreas Steffen 2016-12-19  600
> 			sizeof(datalen_to_hash));
> b6f8f16f41d9286 Roberto Sassu   2013-11-08  601  			if (rc)
> b6f8f16f41d9286 Roberto Sassu   2013-11-08  602
> 	break;
> e3b64c268b485f5 Roberto Sassu   2014-02-03  603  		} else if
> (strcmp(td->fields[i]->field_id, "n") == 0) {
> e3b64c268b485f5 Roberto Sassu   2014-02-03  604
> 	memcpy(buffer, data_to_hash, datalen);
> e3b64c268b485f5 Roberto Sassu   2014-02-03  605
> 	data_to_hash = buffer;
> e3b64c268b485f5 Roberto Sassu   2014-02-03  606
> 	datalen = IMA_EVENT_NAME_LEN_MAX + 1;
> b6f8f16f41d9286 Roberto Sassu   2013-11-08  607  		}
> 357aabed626fe3f Behan Webster   2014-04-04  608  		rc =
> crypto_shash_update(shash, data_to_hash, datalen);
> a71dc65d30a4724 Roberto Sassu   2013-06-07  609  		if (rc)
> a71dc65d30a4724 Roberto Sassu   2013-06-07  610
> 	break;
> a71dc65d30a4724 Roberto Sassu   2013-06-07  611  	}
> a71dc65d30a4724 Roberto Sassu   2013-06-07  612
> a71dc65d30a4724 Roberto Sassu   2013-06-07  613  	if (!rc)
> 6d94809af6b0830 Roberto Sassu   2020-03-25  614  		rc =
> crypto_shash_final(shash, entry->digests[tfm_idx].digest);
> a71dc65d30a4724 Roberto Sassu   2013-06-07  615
> a71dc65d30a4724 Roberto Sassu   2013-06-07  616  	return rc;
> 3323eec921efd81 Mimi Zohar      2009-02-04  617  }
> 3323eec921efd81 Mimi Zohar      2009-02-04  618
> 
> :::::: The code at line 575 was first introduced by commit
> :::::: a71dc65d30a472409f05d247f4eab91b14acf2f5 ima: switch to new
> template management mechanism
> 
> :::::: TO: Roberto Sassu <roberto.sassu@polito.it>
> :::::: CC: Mimi Zohar <zohar@linux.vnet.ibm.com>
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/9dbec9465bda4f8995a42593eb0db010%40huawei.com.
