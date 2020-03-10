Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB7EOTXZQKGQEBRXE3RQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AF6D17F14A
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Mar 2020 08:53:34 +0100 (CET)
Received: by mail-pg1-x53a.google.com with SMTP id n16sf8117763pgl.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Mar 2020 00:53:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1583826812; cv=pass;
        d=google.com; s=arc-20160816;
        b=Z4pqi1aE5s/2w/gpnilFp9wFHHXSCtnCvBtXnfDUFwjWQXpuga8Mj8GkDUG9tvnkOe
         BLKKmWuPYklIszpvw7OMmUFE61UYmtEPl7nnQTqI2n2/AU0G+rMeKGgZlwvClOcYC5uW
         uL4PrX7O1NXYmyu3UjsN7ZV0WhxAUtNxbHfk+tmeebWlY7xGWtDE4jGuk9fGRCgLveV3
         js+1VMBWNbi4mtdRB7HcUr3JCOdmeoeuszRqpRdk/bdQvn0BTPMBObZyHnN0j680NZQ2
         /SgRhHKvl7iEv93lgHRA2+k9vQOGMJAEan+Gysj3BESw8wAHTjU5/bO+qe1LSvyu5Uh1
         KRBg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=sl4JKKH/+59aDflmAdte8vD8AbJVf7sQmVuCCQEfAGg=;
        b=LPo5OzNbzjXIgQj1N44XGZE5HEyaRnTF7tDZUu0gzKamd5GEj9uLd/hSq+NvAOokdO
         azi7nF1m0IFoREizOQLAojGnl05vt0Rwo8nkK6VWPJZnoj6bVF2i7i9vvumpz7BRxDJZ
         U70N/rBVxudDeDnSSADjwNoZue2ko+H+UKCFe/nC7axqj2u66MDaY5JiViSyQ2sUTat+
         RDLLg8RmCSUEFbpOSnXKcJHgKykBp9ruueIOHBe3D+8ljGxYMF5DIpzkDtpfU4BkeATm
         4eNOPGMZCXNyAPQ1spECDJOtrfiiPkGDoHqZ1pKZLMT2Fbs9fJtOlQFtRDpc/5t7gdrv
         9F7A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="FG/pPOCv";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=sl4JKKH/+59aDflmAdte8vD8AbJVf7sQmVuCCQEfAGg=;
        b=sWoCx/btvFBP3T8rwGpm3Mt+kWWtDzxtjg3g3QfR+U06D9h9EcM28milQUrCUNjyFB
         64lzxo39HaRptj/+ywAt71GlADWIdya4eoAu5Z4FhVNDDGSF2n8lfVuJwzU5aS5rfGGT
         KlAGc51hgCjqE03+x92LwNsPkhGctQXkA8+LrBaOqCC1logy9twirurqVl0Afq6eJ3nh
         +dtOMwFvZh8kYgvb4MuS8sFwxmcDvR0W/ZCqu9CCQ8hzi4NQufwaMEEUqzUCBSVd5yuS
         Ub3AQOnLa8uZXGXoTRKM8OFr3G3JnD++yVvkJmzZpuP/+RFq64fH+ks5Mgx1qZJu/jKG
         NZxA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sl4JKKH/+59aDflmAdte8vD8AbJVf7sQmVuCCQEfAGg=;
        b=ht6IliR4/kcbQODltdj7CTP9q0po66jyTOjCrK365V5gIO3ak9hRlZBUCn/xDqnvKi
         Ufj93Hly3UDDpHq26VhP0HKv3CmJgpbpQ/90DBMcYsed9gtZw3coCmf6rLjFdHyN/xsg
         u9nj2wtG7sDbNzI2uTQMvBskSDBPhDU7F/niaT5cRfZeL8aXGxcYhBMtklWCifd4YeC4
         o5jMelpOl7cKFp3FZE+T70y8HNCoa7prI4210MVdGQCfgjBMEfMDSO4qSYtG8JmW6uGu
         4zLgC7AEw98trZMP1S6sjxHiaiTz58mnTFOKOjl1RhXu3M44JCpT2KgTjskmXQA3Ldd7
         gnpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sl4JKKH/+59aDflmAdte8vD8AbJVf7sQmVuCCQEfAGg=;
        b=lNaIAKMdvRFz7yDIOlH86C3OfKFTUyFY3pAXcxusNjiLWjBfxtcMYe1rW+roPvv2rE
         TBfdBWOs9W9/EJjRV60k1ACIRVd+BVZT29cPa1kVcLHWn4MlvwRi9zxuIpUwGnAyOTQY
         xRtVQhwcyPCAnQ+SCg1gRlaHRrodut91U0nJYq859x0wjOtLlQ1UMvOCczqQoDB7Qfaj
         ZsKY8l0Nvv3t5tnAQYfa15GYyVhLhvWnx+fqsRJVg8ShOOQJVwKODW/42sdtX+H0BQ66
         69dcpehpYAyDjDoPcMWl3Hd5iZrOpRXTmhAIg36rO1fteBsiBbP7qu7qO7ONdkvA+Gxw
         gBjg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ1RLIClREC2HV4tixyUDtTgGCgyGvwDz05aUIh0lgBNTrp6dv0q
	z8ukohOyCapb3OhZUE5VRSo=
X-Google-Smtp-Source: ADFU+vsfQW+e7P9MttaCXH4ChluKBnpGG66ZRYYBObumAHzFN4M/VGt03VmEeyf/XX93YcMQQhfkhA==
X-Received: by 2002:a63:4cc:: with SMTP id 195mr246705pge.93.1583826812364;
        Tue, 10 Mar 2020 00:53:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:5f8b:: with SMTP id t133ls4652273pgb.1.gmail; Tue, 10
 Mar 2020 00:53:32 -0700 (PDT)
X-Received: by 2002:a63:384e:: with SMTP id h14mr19480453pgn.295.1583826811893;
        Tue, 10 Mar 2020 00:53:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583826811; cv=none;
        d=google.com; s=arc-20160816;
        b=Dvz7zXy6Xn4F9Ahc/taekqMaalwddtor0Kd6ysfPls5L/KEBDIXVl/JK1noUulFZHx
         fU57DI0ILaCextdLRKlLsu2iV8npLTMa7h/TqudDxHIUiyox3w4yuwoLM0ZFEzQv4+Mm
         VuvNAvcpAqBOh6E7Z9MmnGh1tp0sx/hm4gSkhhXOo7D59Q7JDgbfbctrVH9S4fBcVAep
         yCVbNsb+JQ/VR7vAJ5mlhxEkVFWcIW0xnD7Ons11KqLUHGLU3Fa83UgFHQVnwIzWS0jZ
         ptUaVnK6L3+f++xz+AZrcOI6xY23HpA5MSY6+ZTeeGu546uIDhyb3bwWelT0KVthXomL
         jFcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=GgdUmVqrmUNl/36GqtzMjjhgnVBK/GAMaohqtRDmGJQ=;
        b=XupuSGB9lhMLLaUYXod3VbOrdWCdaafZBk71I1GAU+mpcEojeIO8ktX27Dw/WoYs8g
         UiT9nZ5OhRbAgleDkOE3a3BVe0+f6Dv0JbC/LLJp3O9TrJU9vdOiJrhHM9THgLiwzRQg
         Rl3/ZeSQ0IASnBK135NoY3xPiJvwiV1G4tBg0qfjmMdeDlQw7samTJSJ3luRWH/a3Hgd
         gVtg1J8dnEBxqhKf+0ldjzv3f4WIgY3hDL33fNi/SG2MZn4KXMZpAyswrtH4vUCyQKCz
         fQxfAJHlHGgS9R1UiABhxZ6NVmvisuNFMIf94mdhsYENBS/nccuolb8J6oJ0afb8Ffg0
         wUKg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="FG/pPOCv";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x344.google.com (mail-ot1-x344.google.com. [2607:f8b0:4864:20::344])
        by gmr-mx.google.com with ESMTPS id u19si741479plq.4.2020.03.10.00.53.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Mar 2020 00:53:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) client-ip=2607:f8b0:4864:20::344;
Received: by mail-ot1-x344.google.com with SMTP id 111so7921278oth.13
        for <clang-built-linux@googlegroups.com>; Tue, 10 Mar 2020 00:53:31 -0700 (PDT)
X-Received: by 2002:a9d:64d4:: with SMTP id n20mr14896160otl.193.1583826810989;
        Tue, 10 Mar 2020 00:53:30 -0700 (PDT)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id l15sm10976900otf.12.2020.03.10.00.53.29
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 10 Mar 2020 00:53:30 -0700 (PDT)
Date: Tue, 10 Mar 2020 00:53:28 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>
Cc: devicetree@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Error in dtc around -fno-common
Message-ID: <20200310075328.GA17573@ubuntu-m2-xlarge-x86>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="FG/pPOCv";       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Hi all,

GCC 10 is defaulting to -fno-common and Clang has decided to join it [1],
which will completely turn our CI [2] red across the board when our
compiler uprevs in the current tree's state:

ld.lld: error: duplicate symbol: yylloc
>>> defined at dtc-lexer.lex.c
>>>            scripts/dtc/dtc-lexer.lex.o:(yylloc)
>>> defined at dtc-parser.tab.c
>>>            scripts/dtc/dtc-parser.tab.o:(.bss+0x10)
clang-11: error: linker command failed with exit code 1 (use -v to see
invocation)

Is it possible to pick a single patch from dtc and get it fast tracked
to mainline/stable so that this does not happen? It would be this one:

https://git.kernel.org/pub/scm/utils/dtc/dtc.git/commit/?id=0e9225eb0dfec51def612b928d2f1836b092bc7e

I have tested it and it works fine. If that is not possible, how would
you recommend solving this issue?

[1]: https://github.com/llvm/llvm-project/commit/3d9a0445cce368b55dc3a573bc91fe902bbb977f
[2]: https://travis-ci.com/ClangBuiltLinux/continuous-integration/builds/152428887

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200310075328.GA17573%40ubuntu-m2-xlarge-x86.
