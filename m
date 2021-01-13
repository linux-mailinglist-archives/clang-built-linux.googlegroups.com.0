Return-Path: <clang-built-linux+bncBAABBDER7P7QKGQE2X7JNOY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x237.google.com (mail-lj1-x237.google.com [IPv6:2a00:1450:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id D26AE2F486D
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 Jan 2021 11:16:44 +0100 (CET)
Received: by mail-lj1-x237.google.com with SMTP id d27sf692173ljo.12
        for <lists+clang-built-linux@lfdr.de>; Wed, 13 Jan 2021 02:16:44 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610533004; cv=pass;
        d=google.com; s=arc-20160816;
        b=NzyA4Aa4P4ZtTUgGhEfQpFpFr56qaXFj76XD3OqEaRsfLC0NL7b7dqc+gyigxKbZ5J
         NkcoBsJa5VEAR7M1H1hoVLLHvu6BUdjIfq+2aIVubeNUraJZFlsdXZt+GDyQ5+LXcGiy
         NGnttgBU9JX9rR8rW/sWwfUHhZJtvyJ16C19lJl3ELFQaQlTWYx57CvuTp1f7I2xPQ9A
         JNEzXxYq9F6/YfGQ5RwrwzJbjLn78zBnCskJ8PXjDisrhSBA+FA60Deo3a9EVo9J5GQE
         ZCchWflEnXSCIlaOqs25Z2a6VtfsFNU2gwa36Gn35NwFaKS4WE5pvtmHA594fFAsUNax
         HyhQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:reply-to:cc:from:to:date:dkim-signature;
        bh=+1zSXZVlknmqr3sVLvTQLRzVzaBbrVvIDySni7ng1wg=;
        b=dtnOssZSPhi33Lfzqnp/ckGQJ/9dEEWwEtaKW4bB4lRc8YiHvPXp5zPApqmD+761si
         Lb4QhXHH4qrzR/rTA0R7GVEqvzgKEudOXhwkJO7bGr5NTJPUdsP2vQnm+RcjN6bX9TeT
         SF/M/yQKPLFwg+AFgaroKeCXuqLECYHuDuPePb9DP7+PaxWZ0OLLUiXuqZY7hzN0v+62
         snAtMW1Ui3+zVr2oH+ZDxPoMi9c2QJBOzyqh9JUhsHtcAdAKkIwazByOVfdlzl0Sx6+Y
         HvpFi0vk8vjKKHE/wAAoC2g+FwdwVmixCWsoPWgGsLm/KvJLrH6DaXZ4IyCJxaB/lErO
         S+OA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@pm.me header.s=protonmail header.b=EOEo6r1P;
       spf=pass (google.com: domain of alobakin@pm.me designates 185.70.40.136 as permitted sender) smtp.mailfrom=alobakin@pm.me;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:to:from:cc:reply-to:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+1zSXZVlknmqr3sVLvTQLRzVzaBbrVvIDySni7ng1wg=;
        b=T/w9akxNjN86v0qnGd5nj0uco7N4Yg+sHNjuty75cbK/2oBMgKmAlON0rCYrnm9b9K
         NoJirccAIo6dSAxHR6xm1hUh7NqCdTr897M+UHykF5yHEpJfsgykTMvSRp1Pi0S9OoHF
         FmZGoVhlQ1uKoHczA5nMZ2tBhBpRYSxh+BwRc+QcdaTpZRqQzKduEJimYXMSUZtNiqYi
         4fDLJ/DeuFUt7AMwLsQD03qO1tVNSHIdUYTBrsAJPLsZ/k8lqc+gkduIPkJROVkwpdlT
         pfJjSF6xQVgoCVEly+cVLs1m1sXCxUoeUECoQXzycPHpiFIi9M6FNv9vVO3OWFovhqdM
         1hSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:to:from:cc:reply-to:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+1zSXZVlknmqr3sVLvTQLRzVzaBbrVvIDySni7ng1wg=;
        b=PeDlNU9JA6Uyg9o5cJ3ye+BY98/tvBAKBpoJxHOAdVwgHY+3nnAjJ+D9vvOVY0fp0b
         PU6EkIwOM318reZ6DO7A1CAxK/sRRVGwGN8A6b1oe2mYpP2t4yKNYg1AP7n8n6qhsvC+
         Gc5j5EbzQZxRmekBOpCUkU1UciTk4mzAbv2ELX+vDXck+UU3c24EW3XIlQUbfydyqcMJ
         xsxVajtebMkY00EvoHvMwBCUq73bZQ3xCxh2a31EzyiCaS99+iJRxKy15/V1i3CxfHtk
         9BLC1/nEDL6pq0ER8VTFmQ/6Fv6hbGldrDNOqswW0Gezsho9bJ/wQER7IgeN0ICKIyOi
         Zciw==
X-Gm-Message-State: AOAM531BhidkN+NYypYujCl8rWmWHtgogjeXeskTUbcI//ywI6nHm9hu
	YVmyD4Liqg+9lb+bYTezQ5M=
X-Google-Smtp-Source: ABdhPJx9b9jLypxFOfN8ZHvlqvG8yPExjKs8DZgcttKeljJ61xkQvusADlJ8IA18RPt64yRul0cdYw==
X-Received: by 2002:a2e:7607:: with SMTP id r7mr596189ljc.168.1610533004358;
        Wed, 13 Jan 2021 02:16:44 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:1a5:: with SMTP id c5ls247898ljn.10.gmail; Wed, 13
 Jan 2021 02:16:43 -0800 (PST)
X-Received: by 2002:a2e:9d87:: with SMTP id c7mr611678ljj.43.1610533003608;
        Wed, 13 Jan 2021 02:16:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610533003; cv=none;
        d=google.com; s=arc-20160816;
        b=rB2YPUtu4bWStwVuYDOWOsqkeU+6ollDTyzSeLC6+FNgpdrJorKBpx+8icghiE870S
         HGTHhYesYHdvng+7rX4Fc6nkTWKbm/UTEBJ4W3wfVi9SjUxfSon90+U57dtvS0evZE9G
         /UwXWVkAqsRIbwuFneWVQtKfEs6yu/zxMwKJPyZQNwjZDr4ZPpKc+UjI/akbMQBDI4VO
         yivpPUqrHg/gvQOlUTZjyWUY+ojUMvWYEq0l1izktqF1AANDSxJfP1uYNjq97ZZWyUcO
         Mk4jSEkc0zlD4JbfN1UkFdAm9yoJOhXMppJDmHQ6rV6yfFBv6xbj+iK5xfNmrl6RTWd8
         zv1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:reply-to:cc:from:to:dkim-signature:date;
        bh=sagEb4FSciHpuF7KnzebH5pdU2XwaUc8mW9H7JIBct0=;
        b=FxceZT4NpPRIXRZUs1No5akeh5ssub5CBh3adHkNvLhXGf4GIjFvJkEgpUSDDgyF1p
         2q3yrnT7sKb5UUjU3tDGqnTp0Qnt70WDtaevqwyG0UhVcZ01T67PHVi9DC1DuDftXW1N
         0yKR96CHBp1ML930aKW9aIs0jvjMgPoy7wt0m500Q4yhNCFVgPrCpSd0mUwweH5vzvE/
         rUHOSnoIqSFLhKfD/CF4DteRUhJMXwFXyoJmy9it0o5LqShtLkKeNfHJ47ffK8uVi9uA
         V+Lt/kcH/hmUrY00lMC7AgWrDhlvJv9o2BO+UqdFUAcA5aPxTc3b2Z7YjxMqGvn1RcHC
         +cZQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pm.me header.s=protonmail header.b=EOEo6r1P;
       spf=pass (google.com: domain of alobakin@pm.me designates 185.70.40.136 as permitted sender) smtp.mailfrom=alobakin@pm.me;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=pm.me
Received: from mail-40136.protonmail.ch (mail-40136.protonmail.ch. [185.70.40.136])
        by gmr-mx.google.com with ESMTPS id w10si49671lfu.1.2021.01.13.02.16.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Jan 2021 02:16:43 -0800 (PST)
Received-SPF: pass (google.com: domain of alobakin@pm.me designates 185.70.40.136 as permitted sender) client-ip=185.70.40.136;
Date: Wed, 13 Jan 2021 10:16:41 +0000
To: Nick Desaulniers <ndesaulniers@google.com>
From: "'Alexander Lobakin' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Cc: Alexander Lobakin <alobakin@pm.me>, Fangrui Song <maskray@google.com>, clang-built-linux <clang-built-linux@googlegroups.com>, linux-mips@vger.kernel.org, Thomas Bogendoerfer <tsbogend@alpha.franken.de>, Ralf Baechle <ralf@linux-mips.org>, LKML <linux-kernel@vger.kernel.org>, linux-arch <linux-arch@vger.kernel.org>
Reply-To: Alexander Lobakin <alobakin@pm.me>
Subject: Re: [BUG mips llvm] MIPS: malformed R_MIPS_{HI16,LO16} with LLVM
Message-ID: <20210113101623.3020-1-alobakin@pm.me>
In-Reply-To: <CAKwvOdnvd1NaBQEJ0fPsYiGff4=tUdrcuAR0no9FUMqnOZSu6Q@mail.gmail.com>
References: <20210109171058.497636-1-alobakin@pm.me> <CAKwvOdmV2tj4Uyz1iDkqCj+snWPpnnAmxJyN+puL33EpMRPzUw@mail.gmail.com> <20210109191457.786517-1-alobakin@pm.me> <CAKwvOdnOXXaz+S1agu5kCQLm+qEkXE2Hpd2_V8yPsbUTQH7JZw@mail.gmail.com> <20210111204936.17905-1-alobakin@pm.me> <CAKwvOdnvd1NaBQEJ0fPsYiGff4=tUdrcuAR0no9FUMqnOZSu6Q@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=0.8 required=10.0 tests=ALL_TRUSTED,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,LOTS_OF_MONEY,MONEY_NOHTML
	shortcircuit=no autolearn=disabled version=3.4.4
X-Spam-Checker-Version: SpamAssassin 3.4.4 (2020-01-24) on
	mailout.protonmail.ch
X-Original-Sender: alobakin@pm.me
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@pm.me header.s=protonmail header.b=EOEo6r1P;       spf=pass
 (google.com: domain of alobakin@pm.me designates 185.70.40.136 as permitted
 sender) smtp.mailfrom=alobakin@pm.me;       dmarc=pass (p=QUARANTINE
 sp=QUARANTINE dis=NONE) header.from=pm.me
X-Original-From: Alexander Lobakin <alobakin@pm.me>
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

From: Nick Desaulniers <ndesaulniers@google.com>
Date: Tue, 12 Jan 2021 14:14:58 -0800

> On Mon, Jan 11, 2021 at 12:50 PM Alexander Lobakin <alobakin@pm.me> wrote:
>>
>>> The disassembly for me produces:
>>>     399c: 3c 03 00 00   lui     $3, 0 <phy_device_free>
>>>                         0000399c:  R_MIPS_HI16  .text
>>> ...
>>>     39a8: 24 63 3a 5c   addiu   $3, $3, 14940 <phy_probe>
>>>                         000039a8:  R_MIPS_LO16  .text
>>
>> So, in your case the values of the instructions that relocs refer are:
>>
>> 0x3c030000 R_MIPS_HI16
>> 0x24633a5c R_MIPS_LO16
>>
>> Mine were:
>>
>> 0x3c010000
>> 0x24339444
>>
>> Your second one doesn't have bit 15 set, so I think this pair won't
>> break the code.
>> Try to hunt for R_MIPS_LO16 that have this bit set, i.e. they have
>> '8', '9', 'a', 'b', 'c', 'd' or 'e' as their [15:12].
>
> I don't think any of my R_MIPS_LO16 in that file have that bit set.
> See attached.

Well, seems like you got lucky here.
You can try to check for other modules if any of them have
R_MIPS_LO16 with bit 15 set.

Also, you can try to enable:
CONFIG_LD_DEAD_CODE_DATA_ELIMINATION=y
CONFIG_TRIM_UNUSED_KSYMS=y

to alter the build process. These options didn't change anything
in terms of relocs for me though.

> --
> Thanks,
> ~Nick Desaulniers

Thanks,
Al

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210113101623.3020-1-alobakin%40pm.me.
