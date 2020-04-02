Return-Path: <clang-built-linux+bncBCS7XUWOUULBBYVKTD2AKGQELM3CIJY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 6065219C73A
	for <lists+clang-built-linux@lfdr.de>; Thu,  2 Apr 2020 18:40:04 +0200 (CEST)
Received: by mail-pf1-x43c.google.com with SMTP id d16sf3367269pfo.15
        for <lists+clang-built-linux@lfdr.de>; Thu, 02 Apr 2020 09:40:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585845602; cv=pass;
        d=google.com; s=arc-20160816;
        b=SVv6TbBe3qYy6PQfBfnk/S54gMst4NO7yGVrmNpQv0XKV0mbITGV8IxO+UYxh+9fn/
         haK7cuovNiKiIwh8ItHlbL0UzEm/V8eeCCrC0HVCwqFAUil/F/izvZlUYc7EaeKVJLMx
         LnRhnw6gEgWtbqKDWiEOT5aCKFkbWtvWz7/1OTm2w4IXT0GU6twnDYyfZxaY6F5FT1vj
         v0Ci9P/k+1hFQSBXoo4nPu2ZQK+BA94oRFjN8gb+qInmv6FOLnjr2z49UZNFl0XRQh7N
         jgtxY1wF9W6WfBR7z3YJS4JBP7gA+OMn6TH0qeSHLpNXLPv21X7ioR3Ow6XcrDEZNVn9
         Nwtg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=AK0sjjVYOrxEV5Dr1Q4yncu4mxUxuqiEdL3l0UpPxlY=;
        b=gVjnXCfLsruif1CuR1dNGB6uv38x54/0m7U38CmvfoKcBfRdqagCk/vxFVyseBhO40
         OIAf51MlpJ686u+/uRJat47glXfc51dLA+2Jvcy7HOkZypfc/X6Wo7ly0NiFKUa1jiFH
         +duQy6h5zpX3fAtYEF9TQihpjjULp4m+0FpUyT9mIyMrYl6nZ4j73N6vDafDIIP1D6GT
         NuR5R9Ue7JweMoW49kv/Oado4X6x0NDlzCe8OTwaioenRc5b4xPeHY2REIdx//gYqnh1
         usD6MaUjhvn1l90Zb/2qYfedjFUmTOWcv9eNNTNdbDuh582rWQr62hDxr4NfFQxHl+5b
         kW7g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=fH8o+GZD;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=AK0sjjVYOrxEV5Dr1Q4yncu4mxUxuqiEdL3l0UpPxlY=;
        b=srF13/fWX3xIANA07hKrlrvU2oaBlhAEPvbWR29MQ80Gsv9KsYunPfGw3RIMLjTTKJ
         LtZRvrNRDdBIVYiLE0Mlk8/9YAaZTaoxRipbThmoDDXRIHdWbVa30v8nM8eRFNn3AAz9
         Mc1SlYRJ7asbu0pHr76eTytWGWpAbZY30LdRW7TyaWd1MGls/JYyDfbR6y3WUEv2vS4u
         AY06tsi3/x9Oy2Bqu5NkaZ2dTsMskl0F5VrB8O30C96C3GHxjr30C+mqWVC2EaUWDfIT
         hZnx8dg355jPw3S/Kficn7nZIglAUS/SJhWijIxiDiV7TBIU/3t2nXYDLiTBEJvfcCV/
         TQMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AK0sjjVYOrxEV5Dr1Q4yncu4mxUxuqiEdL3l0UpPxlY=;
        b=aaCIZSeAEbfEeBDSWY1MmGZ2vaBFJ0l9f0PLgJVizvFbz9/Kc5ZHHhdRBozQj2G1+C
         XzzKEz9IpL0JH67xZo2dTIiO19UVTpN2gP3rpOEtfrTEGbYCLbq0dlCV0mo8s1AaRkCO
         CFzjFxVqEqMV7izuZWZkL0bYWSJLvBEkXSKE46pOud+qg++VwmjQAv3qVj13qRmweDE9
         g89ghOnaNkz7P1kEry7ZykA2HSfNzj0+JcqSTCMEfOCOfjVEYBF5qsW1KTH/8GLrkg2Y
         ohAmkJcnrqps3ibj2hj6/sg4pbkfAYj5tTUdnpdZ6rlfSZ4C4hY0PUNl+cTkvSPobRjy
         as1w==
X-Gm-Message-State: AGi0PubYKZztNXM6+8rA8IHBkfzwnZrDJP4uu0Yq95HZajStg9owI7c9
	HbxtWL1RUP44Mfy0fCJaJMk=
X-Google-Smtp-Source: APiQypIk4Nn6ImgBLnquNUWs0g5T0qfwsunbLGnRgGnXVAS/gzPC2z3AHRZPKl121/6mnStm8lN06Q==
X-Received: by 2002:a63:3602:: with SMTP id d2mr4084934pga.138.1585845602670;
        Thu, 02 Apr 2020 09:40:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:8c85:: with SMTP id t5ls3095595plo.9.gmail; Thu, 02
 Apr 2020 09:40:02 -0700 (PDT)
X-Received: by 2002:a17:902:74c4:: with SMTP id f4mr3788676plt.39.1585845602155;
        Thu, 02 Apr 2020 09:40:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585845602; cv=none;
        d=google.com; s=arc-20160816;
        b=rZ952vGIB6Yj3ZJuKomNCQYfaVho0geTJmcvPdCzPmurN/Qn+Ln4QcuNB6uIp73ynR
         L18A6SQ7qYMvvFEDv/p502u5+RloLkNTXWo+JoTx7D3t46XnNx16g28uT4Ft6M6QZmT8
         /9ewVfnFcKmgBg20sNyLig1VUHZKJwO++qzT+2OASW8Dqe4q3xNaU1N+g5CPZyHzh4/w
         LDyRJD8sCKOv1Nj05s6L7OpB1LqMVLqpBQ8iNnviVq89osm4CPv6ALBBlFMyj+I8cz1P
         j0ALxlz40JJ/SEHfG5JSpimNIbcoaJ/vGbAfogaSvghW/ASc+86VIWyCUfAFnLdKWrRk
         9Lug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=P5P7+32EPNiTA9W/bPQnunX4XIHQIJgt5gQH7DdKhy0=;
        b=GFej1z8VU3rPZrUfsKKb1ge6x4WOnvX0lI99hmc+gahcnGp4zEJs3Lflzw2tq16HRr
         yXTPg+uWjM/GoyqV+M152CroM1OH699TC0Oq4+IS9aAr4BAFnvc7SCpUxb4+tyBkt26S
         QqbEHGWSr+zoiXggBU4a7zWz8+VtFDDD1STsLMaIyJxe7R3sU4WEfyAPt1JqDnWOGFfa
         6l2tM+c0GVqqtPgyUKksq3E4mtjrtdW8etrXqyIvcqUgYWcy4dwOgOclYKvfwmW04xDi
         F6iv5i2SYjAf2EeQfDfETs2dk+kA0rn5JCELBQxHuggOgKXl+5S3lZNPBDKiE5uuRFeB
         WgPw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=fH8o+GZD;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id x12si274287plv.3.2020.04.02.09.40.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Apr 2020 09:40:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id r14so1978952pfl.12
        for <clang-built-linux@googlegroups.com>; Thu, 02 Apr 2020 09:40:02 -0700 (PDT)
X-Received: by 2002:a05:6a00:c8:: with SMTP id e8mr3777718pfj.131.1585845601274;
        Thu, 02 Apr 2020 09:40:01 -0700 (PDT)
Received: from google.com ([2620:15c:2ce:0:9efe:9f1:9267:2b27])
        by smtp.gmail.com with ESMTPSA id ci18sm4102094pjb.23.2020.04.02.09.40.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Apr 2020 09:40:00 -0700 (PDT)
Date: Thu, 2 Apr 2020 09:39:57 -0700
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: 'Nick Desaulniers' via Clang Built Linux <clang-built-linux@googlegroups.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Sandeep Patil <sspatil@google.com>
Subject: Re: [PATCH v2] Makefile.llvm: simplify LLVM build
Message-ID: <20200402163957.lqgr3tpc4z7ish5e@google.com>
References: <20200317215515.226917-1-ndesaulniers@google.com>
 <20200327224246.GA12350@ubuntu-m2-xlarge-x86>
 <CAK7LNAShb1gWuZyycLAGWm19EWn17zeNcmdPyqu1o=K9XrfJbg@mail.gmail.com>
 <CAK7LNAQ3=jUu4aa=JQB8wErUGDd-Vr=cX_yZSdP_uAP6kWZ=pw@mail.gmail.com>
 <CAKwvOd=5AG1ARw6JUXmkuiftuShuYHKLk0ZnueuLhvOdMr5dOA@mail.gmail.com>
 <20200330190312.GA32257@ubuntu-m2-xlarge-x86>
 <CAK7LNAT1HoV5wUZRdeU0+P1nYAm2xQ4tpOG+7UtT4947QByakg@mail.gmail.com>
 <CAKwvOd==U6NvvYz8aUz8fUNdvz27pKrn8X5205rFadpGXzRC-Q@mail.gmail.com>
 <CAK7LNAR0PPxibFVC5F07mytz4J2BbwQkpHcquH56j7=S_Mqj2g@mail.gmail.com>
 <CAKwvOdnYXXcfxWT6bOZXCX9-ac8tb=p2J53W+T-_gOfUu9vvSg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <CAKwvOdnYXXcfxWT6bOZXCX9-ac8tb=p2J53W+T-_gOfUu9vvSg@mail.gmail.com>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=fH8o+GZD;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::441
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Fangrui Song <maskray@google.com>
Reply-To: Fangrui Song <maskray@google.com>
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


On 2020-04-01, 'Nick Desaulniers' via Clang Built Linux wrote:
>On Tue, Mar 31, 2020 at 11:11 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
>>
>> On Wed, Apr 1, 2020 at 3:39 AM Nick Desaulniers <ndesaulniers@google.com> wrote:
>> >
>> > On Mon, Mar 30, 2020 at 11:25 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
>> > >
>> > > Having both LLVM_DIR and LLVM_SUFFIX seems verbose.
>> >
>> > I agree, so maybe just LLVM=y, and we can support both non-standard
>> > locations and debian suffixes via modifications to PATH.
>>
>>
>>
>> OK, so we will start with the boolean switch 'LLVM'.
>>
>> People can use PATH to cope with directory path and suffixes.
>
>Sounds good, we will modify our CI to use PATH modifications rather
>than suffixes. We can even do that before such a patch to Makefile
>exists.

The proposed LLVM=1 + PATH scheme looks good to me.


There seems to be one issue.
OBJSIZE=llvm-objsize added in
commit fcf1b6a35c16ac500fa908a4022238e5d666eabf "Documentation/llvm: add documentation on building w/ Clang/LLVM"
is wrong.

The tool is named llvm-size. OBJSIZE is only used once:

   arch/s390/scripts/Makefile.chkbss
   14:     if ! $(OBJSIZE) --common $< | $(AWK) 'END { if ($$3) exit 1 }'; then \

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200402163957.lqgr3tpc4z7ish5e%40google.com.
