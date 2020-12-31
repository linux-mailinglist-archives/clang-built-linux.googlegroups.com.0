Return-Path: <clang-built-linux+bncBDKMLAXVVQHBBKPVWT7QKGQEZO3ZKWQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1039.google.com (mail-pj1-x1039.google.com [IPv6:2607:f8b0:4864:20::1039])
	by mail.lfdr.de (Postfix) with ESMTPS id 586C42E7DB8
	for <lists+clang-built-linux@lfdr.de>; Thu, 31 Dec 2020 03:42:51 +0100 (CET)
Received: by mail-pj1-x1039.google.com with SMTP id s14sf5300044pjk.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 30 Dec 2020 18:42:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609382569; cv=pass;
        d=google.com; s=arc-20160816;
        b=Q4gshCUJa0Go/SDfTExKCLTxi18ufcu69C+BKL/8jJQIHF412xnFeeMLkodKtqF8pU
         ysWIxUykNP3gNXOlCzwkBYPpA0LY5sf02Riy9heoGuM5AgP0JKaApVTrz/91AY48u1eE
         Y2ieVivzKvxqEEuXOgI26EQ5kfrR+rDjDc8kx2CBEyhyxurNzu0qpIwtTsL3Tmj3wYcu
         m5LYLW7xhKpPLZho3IXm617x0Jp7jNqsl4a4f3lhGvUr8M4FWw5MKaiTBl0BHRFh48mZ
         rPbO75xcWchjdDlefMdLOPhtnI8EcXW7v5J99vAN/7LEVWMPVkyKHQfFwQi/CZRQohLV
         4soQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=R8wQwoIlQK5/kD39tuVIrZBzdtAgn7m1Ju1F9hNJ9ME=;
        b=H2AA4GI8HBM9wTSl24E7+9zzOju7wm12QpzVAdi/ClCcr2ySiCKSJZ9CTorEKtP5E4
         Ml8pxlDc6oHbdsX4DL+4bHsgF3kLGwCIZNTOyqmtgYGzEqOQ93lGwtu917r/m0OP9wm0
         A4FQbR2BeqLUkpMzR+nmiWDTbzDttb2tUk8N0kgT+Uv1BZfN4btL+PfFoXuEcUfcQPOs
         5qwxK/DfnVHSlZlyVZ3GLPDbF+8pY920D4cMMVvAeyRmFHNQ+/20rtBqYtVXkxTG2ii0
         IvyRup5RnmIxwB8RaBBbaugQdXNfreCJmU6vtZcUKGL17HFfpwSVuoiOCOSyD2qSd+N3
         QL1Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of yuchao0@huawei.com designates 45.249.212.190 as permitted sender) smtp.mailfrom=yuchao0@huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=R8wQwoIlQK5/kD39tuVIrZBzdtAgn7m1Ju1F9hNJ9ME=;
        b=Mi04cFC5QAZfLMWUABSd56in03EaPK/VAHCeg0ysgC/XbvEIbirLZxLGnUeFEvd2PN
         xqlkr0JZmASrmtbFgy7skvo3H0RcGvo06qJGCIrh9/rxbyl4KxZ3QQVpNg0368AB+Dr2
         fjZKZm5M38nQ0vx0G+fwGzP7h42Ay5XgozATQKykdLmfZVuSTM0Z8KU3h8HmMy+8l29b
         bBR+NiyqBbn5GYgFzJjfm9bl7/p6TguhCVSZ4GMTSFAC6N7QMzOassiQJ47nuGsakwwk
         oO3R9ZqDPCNMCwkwh0ffHtAYvM97iXw5fx/Tan/fCddocly9tVXrbaP1mGhTJKKggku5
         rr2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=R8wQwoIlQK5/kD39tuVIrZBzdtAgn7m1Ju1F9hNJ9ME=;
        b=N/kW3Bf8QJJY5AstKkJmBzRjYkLme1TYr807bcV57GXFxeqigXryPz17npNzTJhVi8
         aW8iYFEj6KLoaOtxiqTGOyul7aGecIgicMa9h+0GTQWu5wsfVuC6eAIjqrLnuPKehpsU
         qGrFQMpD6h7FkdaeLGceGRS/aFAASY57hhKTOtaD9Kp8nHzNFOtUe0Fpy/bUZ3ablZGi
         fXR0jwmt3vXGRdfpJtMf36VVf5We3cz89V7lZCpa7ZJoak7xGqNFgaYM0Ko9BsipmE2g
         b14YHva7Dc/7gpB1KbdoVz37yIT0+anJPsCdMZJtGyLkdLJww6HLTFGZA5hFYNZXdM1f
         M36A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5312Tdh6XvJlCJeRGXZLYNc4QzGPH1lyfSC0GBEfzZwF3SipSFRg
	Vz0GIontzKYiW7EcLcZ2Njw=
X-Google-Smtp-Source: ABdhPJxdjC1AsAILst98mCqrHg4AbWh7AAsuVjNznKiKTQa6aDOWdzNWIT38W+/Pkoi/monKNhzlPw==
X-Received: by 2002:a17:90b:1945:: with SMTP id nk5mr11158726pjb.30.1609382569576;
        Wed, 30 Dec 2020 18:42:49 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:4f0a:: with SMTP id p10ls215412pjh.2.experimental-gmail;
 Wed, 30 Dec 2020 18:42:48 -0800 (PST)
X-Received: by 2002:a17:90b:1a86:: with SMTP id ng6mr11404444pjb.12.1609382568491;
        Wed, 30 Dec 2020 18:42:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609382568; cv=none;
        d=google.com; s=arc-20160816;
        b=0UaovEHQPjRVnjicnG0xqBYBBJttG8aQj/QhCGkR5DtRLolWU115iUAjEhR+i99/hg
         LL7e3HElWDSSDLQiauByz3MRw/iobPBwpW6usADZP+P7NZnQp08+jWFrqySnDucPr8l0
         mieVgB5LC9/LTorghV2LOEzbKIlr6Ik0jFo9Qs34l3QV6474dB/wPmZG3w/sM/7tWqb+
         rWQmCljw2nhE1azhkWzZdmZ7DcHqb0cuWSMklthinlgC9YT77Xzfwaj7S1oAJNQg82vi
         +DN7DL2nZg26vjsVb8iUVq95LKlqg3js5TFF1PkwfQH0JU9zFYg7EJPvmQ8HJ3yFw0L+
         ZiyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=K0tdKpsoP6Xh8ookabtGbAbkzDTH6u7BrgnxZWq3Z2I=;
        b=dA1+FX9vUp9y/MSbo3SIrU2ucelVbRk7ujEuXZwNPCT7572G1Jwe9/XWQmi/dZBp0K
         /n5f4DCgwOpmUOkhiu/NPfi6WKzyxgyFLRBaJeWGvkOF6nyt2cYoyNtQ9AV0Lh6zi8Sa
         9bW8tdV6NvO8Zu+kd0uDrExVUUAUAuIN0GEWVEgffRZB5eGVqT+xFVNky+BeqWam9pnK
         rw+MxD8hqQms4NiMpDlZThTb2uHEnNaLOmD+Xg3cnX3gryd9GuhYH5JbzLRzkfgi0RKa
         EzQ4R0ZuEwbB56ekPyMmwyOJgM4MGyKmaic/79GMoE4xX26yCyliGDwDfwRjwqS/o7bA
         CFDQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of yuchao0@huawei.com designates 45.249.212.190 as permitted sender) smtp.mailfrom=yuchao0@huawei.com
Received: from szxga04-in.huawei.com (szxga04-in.huawei.com. [45.249.212.190])
        by gmr-mx.google.com with ESMTPS id b18si2652557pls.1.2020.12.30.18.42.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Dec 2020 18:42:48 -0800 (PST)
Received-SPF: pass (google.com: domain of yuchao0@huawei.com designates 45.249.212.190 as permitted sender) client-ip=45.249.212.190;
Received: from DGGEMS408-HUB.china.huawei.com (unknown [172.30.72.58])
	by szxga04-in.huawei.com (SkyGuard) with ESMTP id 4D5sqV61M8zky8B;
	Thu, 31 Dec 2020 10:41:42 +0800 (CST)
Received: from [10.136.114.67] (10.136.114.67) by smtp.huawei.com
 (10.3.19.208) with Microsoft SMTP Server (TLS) id 14.3.498.0; Thu, 31 Dec
 2020 10:42:45 +0800
Subject: Re: fs/f2fs/gc.c:622:12: warning: stack frame size of 3056 bytes in
 function 'get_victim_by_default'
To: kernel test robot <lkp@intel.com>, Chao Yu <chao@kernel.org>
CC: <kbuild-all@lists.01.org>, <clang-built-linux@googlegroups.com>,
	<linux-kernel@vger.kernel.org>, Jaegeuk Kim <jaegeuk@kernel.org>
References: <202012300210.tAnnyXhZ-lkp@intel.com>
From: Chao Yu <yuchao0@huawei.com>
Message-ID: <8a8ef6b8-84c2-abfe-e758-2fa52a989c72@huawei.com>
Date: Thu, 31 Dec 2020 10:42:44 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <202012300210.tAnnyXhZ-lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Originating-IP: [10.136.114.67]
X-CFilter-Loop: Reflected
X-Original-Sender: yuchao0@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of yuchao0@huawei.com designates 45.249.212.190 as
 permitted sender) smtp.mailfrom=yuchao0@huawei.com
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

Hello,

I tried -Wframe-larger-than=3D512 in x86_64, and only below two functions
exceed the frame size threshold, will check powerpc64 later.

namei.c: In function =E2=80=98f2fs_update_extension_list=E2=80=99:
namei.c:276:1: warning: the frame size of 560 bytes is larger than 512 byte=
s [-Wframe-larger-than=3D]

node.c: In function =E2=80=98f2fs_destroy_node_manager=E2=80=99:
node.c:3271:1: warning: the frame size of 792 bytes is larger than 512 byte=
s [-Wframe-larger-than=3D]

Does this issue only occur in powerpc64? do you have results in other archs=
?

On 2020/12/30 2:45, kernel test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.gi=
t master
> head:   dea8dcf2a9fa8cc540136a6cd885c3beece16ec3
> commit: 093749e296e29a4b0162eb925a6701a01e8c9a98 f2fs: support age thresh=
old based garbage collection
> date:   4 months ago
> config: powerpc64-randconfig-r023-20201221 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project cee1=
e7d14f4628d6174b33640d502bff3b54ae45)
> reproduce (this is a W=3D1 build):
>          wget https://raw.githubusercontent.com/intel/lkp-tests/master/sb=
in/make.cross -O ~/bin/make.cross
>          chmod +x ~/bin/make.cross
>          # install powerpc64 cross compiling tool for clang build
>          # apt-get install binutils-powerpc64-linux-gnu
>          # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux=
.git/commit/?id=3D093749e296e29a4b0162eb925a6701a01e8c9a98
>          git remote add linus https://git.kernel.org/pub/scm/linux/kernel=
/git/torvalds/linux.git
>          git fetch --no-tags linus master
>          git checkout 093749e296e29a4b0162eb925a6701a01e8c9a98
>          # save the attached .config to linux build tree
>          COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross A=
RCH=3Dpowerpc64
>=20
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>=20
> All warnings (new ones prefixed by >>):
>=20
>>> fs/f2fs/gc.c:622:12: warning: stack frame size of 3056 bytes in functio=
n 'get_victim_by_default' [-Wframe-larger-than=3D]
>     static int get_victim_by_default(struct f2fs_sb_info *sbi,
>                ^
>     1 warning generated.
>=20
>=20
> vim +/get_victim_by_default +622 fs/f2fs/gc.c
>=20
> 093749e296e29a4 Chao Yu       2020-08-04  613
> 0a8165d7c2cf139 Jaegeuk Kim   2012-11-29  614  /*
> 111d2495a8a8fbd Masanari Iida 2013-03-19  615   * This function is called=
 from two paths.
> 7bc0900347e069a Jaegeuk Kim   2012-11-02  616   * One is garbage collecti=
on and the other is SSR segment selection.
> 7bc0900347e069a Jaegeuk Kim   2012-11-02  617   * When it is called durin=
g GC, it just gets a victim segment
> 7bc0900347e069a Jaegeuk Kim   2012-11-02  618   * and it does not remove =
it from dirty seglist.
> 7bc0900347e069a Jaegeuk Kim   2012-11-02  619   * When it is called from =
SSR segment selection, it finds a segment
> 7bc0900347e069a Jaegeuk Kim   2012-11-02  620   * which has minimum valid=
 blocks and removes it from dirty seglist.
> 7bc0900347e069a Jaegeuk Kim   2012-11-02  621   */
> 7bc0900347e069a Jaegeuk Kim   2012-11-02 @622  static int get_victim_by_d=
efault(struct f2fs_sb_info *sbi,
> 093749e296e29a4 Chao Yu       2020-08-04  623  			unsigned int *result, i=
nt gc_type, int type,
> 093749e296e29a4 Chao Yu       2020-08-04  624  			char alloc_mode, unsign=
ed long long age)
> 7bc0900347e069a Jaegeuk Kim   2012-11-02  625  {
> 7bc0900347e069a Jaegeuk Kim   2012-11-02  626  	struct dirty_seglist_info=
 *dirty_i =3D DIRTY_I(sbi);
> e066b83c9b40f3a Jaegeuk Kim   2017-04-13  627  	struct sit_info *sm =3D S=
IT_I(sbi);
> 7bc0900347e069a Jaegeuk Kim   2012-11-02  628  	struct victim_sel_policy =
p;
> 3fa565039e3338f Sheng Yong    2016-09-29  629  	unsigned int secno, last_=
victim;
> 04f0b2eaa3b3ee2 Qiuyang Sun   2019-06-05  630  	unsigned int last_segment=
;
> 093749e296e29a4 Chao Yu       2020-08-04  631  	unsigned int nsearched;
> 093749e296e29a4 Chao Yu       2020-08-04  632  	bool is_atgc;
> 97767500781fae9 Qilong Zhang  2020-06-28  633  	int ret =3D 0;
> 7bc0900347e069a Jaegeuk Kim   2012-11-02  634
> 210f41bc048263d Chao Yu       2014-09-15  635  	mutex_lock(&dirty_i->segl=
ist_lock);
> 04f0b2eaa3b3ee2 Qiuyang Sun   2019-06-05  636  	last_segment =3D MAIN_SEC=
S(sbi) * sbi->segs_per_sec;
> 210f41bc048263d Chao Yu       2014-09-15  637
> 7bc0900347e069a Jaegeuk Kim   2012-11-02  638  	p.alloc_mode =3D alloc_mo=
de;
> 093749e296e29a4 Chao Yu       2020-08-04  639  	p.age =3D age;
> 093749e296e29a4 Chao Yu       2020-08-04  640  	p.age_threshold =3D sbi->=
am.age_threshold;
> 7bc0900347e069a Jaegeuk Kim   2012-11-02  641
> 093749e296e29a4 Chao Yu       2020-08-04  642  retry:
> 093749e296e29a4 Chao Yu       2020-08-04  643  	select_policy(sbi, gc_typ=
e, type, &p);
> 7bc0900347e069a Jaegeuk Kim   2012-11-02  644  	p.min_segno =3D NULL_SEGN=
O;
> 093749e296e29a4 Chao Yu       2020-08-04  645  	p.oldest_age =3D 0;
> 3fa565039e3338f Sheng Yong    2016-09-29  646  	p.min_cost =3D get_max_co=
st(sbi, &p);
> 7bc0900347e069a Jaegeuk Kim   2012-11-02  647
> 093749e296e29a4 Chao Yu       2020-08-04  648  	is_atgc =3D (p.gc_mode =
=3D=3D GC_AT || p.alloc_mode =3D=3D AT_SSR);
> 093749e296e29a4 Chao Yu       2020-08-04  649  	nsearched =3D 0;
> 093749e296e29a4 Chao Yu       2020-08-04  650
> 093749e296e29a4 Chao Yu       2020-08-04  651  	if (is_atgc)
> 093749e296e29a4 Chao Yu       2020-08-04  652  		SIT_I(sbi)->dirty_min_mt=
ime =3D ULLONG_MAX;
> 093749e296e29a4 Chao Yu       2020-08-04  653
> e066b83c9b40f3a Jaegeuk Kim   2017-04-13  654  	if (*result !=3D NULL_SEG=
NO) {
> 97767500781fae9 Qilong Zhang  2020-06-28  655  		if (!get_valid_blocks(sb=
i, *result, false)) {
> 97767500781fae9 Qilong Zhang  2020-06-28  656  			ret =3D -ENODATA;
> 97767500781fae9 Qilong Zhang  2020-06-28  657  			goto out;
> 97767500781fae9 Qilong Zhang  2020-06-28  658  		}
> 97767500781fae9 Qilong Zhang  2020-06-28  659
> 97767500781fae9 Qilong Zhang  2020-06-28  660  		if (sec_usage_check(sbi,=
 GET_SEC_FROM_SEG(sbi, *result)))
> 97767500781fae9 Qilong Zhang  2020-06-28  661  			ret =3D -EBUSY;
> 97767500781fae9 Qilong Zhang  2020-06-28  662  		else
> e066b83c9b40f3a Jaegeuk Kim   2017-04-13  663  			p.min_segno =3D *result=
;
> e066b83c9b40f3a Jaegeuk Kim   2017-04-13  664  		goto out;
> e066b83c9b40f3a Jaegeuk Kim   2017-04-13  665  	}
> e066b83c9b40f3a Jaegeuk Kim   2017-04-13  666
> 97767500781fae9 Qilong Zhang  2020-06-28  667  	ret =3D -ENODATA;
> 3342bb303bf48dd Chao Yu       2015-10-05  668  	if (p.max_search =3D=3D 0=
)
> 3342bb303bf48dd Chao Yu       2015-10-05  669  		goto out;
> 3342bb303bf48dd Chao Yu       2015-10-05  670
> e3080b0120a15e6 Chao Yu       2018-10-24  671  	if (__is_large_section(sb=
i) && p.alloc_mode =3D=3D LFS) {
> e3080b0120a15e6 Chao Yu       2018-10-24  672  		if (sbi->next_victim_seg=
[BG_GC] !=3D NULL_SEGNO) {
> e3080b0120a15e6 Chao Yu       2018-10-24  673  			p.min_segno =3D sbi->ne=
xt_victim_seg[BG_GC];
> e3080b0120a15e6 Chao Yu       2018-10-24  674  			*result =3D p.min_segno=
;
> e3080b0120a15e6 Chao Yu       2018-10-24  675  			sbi->next_victim_seg[BG=
_GC] =3D NULL_SEGNO;
> e3080b0120a15e6 Chao Yu       2018-10-24  676  			goto got_result;
> e3080b0120a15e6 Chao Yu       2018-10-24  677  		}
> e3080b0120a15e6 Chao Yu       2018-10-24  678  		if (gc_type =3D=3D FG_GC=
 &&
> e3080b0120a15e6 Chao Yu       2018-10-24  679  				sbi->next_victim_seg[F=
G_GC] !=3D NULL_SEGNO) {
> e3080b0120a15e6 Chao Yu       2018-10-24  680  			p.min_segno =3D sbi->ne=
xt_victim_seg[FG_GC];
> e3080b0120a15e6 Chao Yu       2018-10-24  681  			*result =3D p.min_segno=
;
> e3080b0120a15e6 Chao Yu       2018-10-24  682  			sbi->next_victim_seg[FG=
_GC] =3D NULL_SEGNO;
> e3080b0120a15e6 Chao Yu       2018-10-24  683  			goto got_result;
> e3080b0120a15e6 Chao Yu       2018-10-24  684  		}
> e3080b0120a15e6 Chao Yu       2018-10-24  685  	}
> e3080b0120a15e6 Chao Yu       2018-10-24  686
> e066b83c9b40f3a Jaegeuk Kim   2017-04-13  687  	last_victim =3D sm->last_=
victim[p.gc_mode];
> 7bc0900347e069a Jaegeuk Kim   2012-11-02  688  	if (p.alloc_mode =3D=3D L=
FS && gc_type =3D=3D FG_GC) {
> 7bc0900347e069a Jaegeuk Kim   2012-11-02  689  		p.min_segno =3D check_bg=
_victims(sbi);
> 7bc0900347e069a Jaegeuk Kim   2012-11-02  690  		if (p.min_segno !=3D NUL=
L_SEGNO)
> 7bc0900347e069a Jaegeuk Kim   2012-11-02  691  			goto got_it;
> 7bc0900347e069a Jaegeuk Kim   2012-11-02  692  	}
> 7bc0900347e069a Jaegeuk Kim   2012-11-02  693
> 7bc0900347e069a Jaegeuk Kim   2012-11-02  694  	while (1) {
> da52f8ade40b032 Jack Qiu      2020-06-18  695  		unsigned long cost, *dir=
ty_bitmap;
> da52f8ade40b032 Jack Qiu      2020-06-18  696  		unsigned int unit_no, se=
gno;
> da52f8ade40b032 Jack Qiu      2020-06-18  697
> da52f8ade40b032 Jack Qiu      2020-06-18  698  		dirty_bitmap =3D p.dirty=
_bitmap;
> da52f8ade40b032 Jack Qiu      2020-06-18  699  		unit_no =3D find_next_bi=
t(dirty_bitmap,
> da52f8ade40b032 Jack Qiu      2020-06-18  700  				last_segment / p.ofs_u=
nit,
> da52f8ade40b032 Jack Qiu      2020-06-18  701  				p.offset / p.ofs_unit)=
;
> da52f8ade40b032 Jack Qiu      2020-06-18  702  		segno =3D unit_no * p.of=
s_unit;
> a43f7ec327b0d86 Chao Yu       2015-10-05  703  		if (segno >=3D last_segm=
ent) {
> e066b83c9b40f3a Jaegeuk Kim   2017-04-13  704  			if (sm->last_victim[p.g=
c_mode]) {
> e066b83c9b40f3a Jaegeuk Kim   2017-04-13  705  				last_segment =3D
> e066b83c9b40f3a Jaegeuk Kim   2017-04-13  706  					sm->last_victim[p.gc_=
mode];
> e066b83c9b40f3a Jaegeuk Kim   2017-04-13  707  				sm->last_victim[p.gc_m=
ode] =3D 0;
> 7bc0900347e069a Jaegeuk Kim   2012-11-02  708  				p.offset =3D 0;
> 7bc0900347e069a Jaegeuk Kim   2012-11-02  709  				continue;
> 7bc0900347e069a Jaegeuk Kim   2012-11-02  710  			}
> 7bc0900347e069a Jaegeuk Kim   2012-11-02  711  			break;
> 7bc0900347e069a Jaegeuk Kim   2012-11-02  712  		}
> a57e564d14d9d12 Jin Xu        2013-09-13  713
> a57e564d14d9d12 Jin Xu        2013-09-13  714  		p.offset =3D segno + p.o=
fs_unit;
> 688159b6db47a9e Fan Li        2016-02-03  715  		nsearched++;
> 688159b6db47a9e Fan Li        2016-02-03  716
>=20
> :::::: The code at line 622 was first introduced by commit
> :::::: 7bc0900347e069a1676d28ad6f98cafaf8cfd6e9 f2fs: add garbage collect=
ion functions
>=20
> :::::: TO: Jaegeuk Kim <jaegeuk.kim@samsung.com>
> :::::: CC: Jaegeuk Kim <jaegeuk.kim@samsung.com>
>=20
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>=20

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/8a8ef6b8-84c2-abfe-e758-2fa52a989c72%40huawei.com.
