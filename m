Return-Path: <clang-built-linux+bncBC7ZLSUWVAHRBO6AX2EAMGQEKQRB3QY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x438.google.com (mail-wr1-x438.google.com [IPv6:2a00:1450:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 533B73E39C5
	for <lists+clang-built-linux@lfdr.de>; Sun,  8 Aug 2021 11:13:32 +0200 (CEST)
Received: by mail-wr1-x438.google.com with SMTP id z10-20020adfdf8a0000b02901536d17cd63sf4618141wrl.21
        for <lists+clang-built-linux@lfdr.de>; Sun, 08 Aug 2021 02:13:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628414012; cv=pass;
        d=google.com; s=arc-20160816;
        b=VN5BjhFbC6sskV4pjKcW7xV8yDQbbYf3TyrLue6S4QMgKKfJefCE6J4ApyUewndNGv
         xspOI1ezkbeS6BN9d53OKE7Pqm6mHCWDJdxh2xac9DNPPU7D5tVAvMUzWnUtVIKlT8iH
         3DieGIhdOBnRcQwkvjzNFCxZoAj6dxvx1gsrNB13W0OsIw3I4EzAzKlJ0KQbjMexVk/d
         2NIg0vgT+2/j6nFaUnFBsatxSZoOCpLi/q/gbi8sLjuOsluX5D/I8e9NOb24ZIw9NPq/
         GlkfllGP9yuqo4eybTULM1ZOZlh/EbTyoOTakoad6LLgO4hemn4Qs05a0fDwo2oDThze
         e+Jw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:sender:dkim-signature;
        bh=qkT95RIJ5CTWEXT7k4U+H9gWgmxtdnTgnhRz3MDyqKo=;
        b=rgBvPAny5RaXY3Wb/SfJYdi+wBgsPr4sEjm4/LrQkVF5AiZigkGu8Xl+m/clYwmBzI
         s5fichFzourRDGUWEhdFqORdD8yTsE3D/xyuWKxN7cJ8m+R88GmrvIZBize1O5gO8imB
         Vda/rGoXz6uI6q2s5u/eZ0bKRXIsOfttG3/W8oyohlXcObEXp00Bv+fzImu1/2oy+vvM
         IiFJilS8iFNEwjDLYopfToGoa6x8DTIpWUpk8+OpHT4CdG1tm9uqHM1YUmc78KIQzvs5
         MVEYQFn8JSD6J3yB5zAXz2zhmB+WxEOh52uuB3ppri9XQ/GtQEcjfsktPqBJN0YnwRGT
         lOGA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mozilla.com header.s=google header.b=LdLFXAZ6;
       spf=pass (google.com: domain of sylvestre@mozilla.com designates 2a00:1450:4864:20::332 as permitted sender) smtp.mailfrom=sylvestre@mozilla.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=mozilla.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qkT95RIJ5CTWEXT7k4U+H9gWgmxtdnTgnhRz3MDyqKo=;
        b=PmxAYu2/VYyMitgDeQBUq/Nj0RnBITSSs1Ao7u6+T/iJkdV2vDWyUAuPji2LUT0Zq9
         M7h+mnh5ondYj/Jg0nUwbRNjg5/fUsAWfRL8XCwD7qVEi9hLd8QtQ4Zq7nUfrLrY36h1
         a4pxtQP9HMs7saF2LvLIDWJdvoaSreZr0jEasWF2XMkE22gcuMAj6njxvIaRxIxHt92z
         FTsTakarlYj0GFkDdGu9Y5Ggd8SY1zpq8DjTd/r6TW7Ikj1TGHACN6xwYy2zNKLkRX5j
         Ayi9eYqnnxoQzecYizXQkt86WBHmxjoyqwf3T+xnVTRD7b9QVyO/wdPG427pCXQSWxAz
         qj2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:mime-version:user-agent
         :subject:content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qkT95RIJ5CTWEXT7k4U+H9gWgmxtdnTgnhRz3MDyqKo=;
        b=BvKYiRX98JujqTY3fdhyhWwaFpDH0EDpVYR1LBehngtYUOLYo1YuGiIkixU5J6d61Z
         tykoA5DuE10f9Co7ibuk+yQAf6p7QFM5jB4NYw2uqNFvjNtFxWJeOU6rr2VdExbsjFjw
         0UnDB0wJL43AhTWizeHvUyO/QNtfyxAFvIce+ivyZ+0ORP12JX+XdZ8GTAMBT1FS6d0v
         6udjuAnz54tg0CXFnRSOUFOym5fSdq6BYD07E0FSc5pbSGWWDC+R/vT+7pziEFXaA/vq
         e0A1R4X1Pvhboi8JjHCEoOaw4up/HndijiJvkufxlRFFkGaAftmRjzIWh3xvvrrY77CD
         LAZg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531nr2N0Rcezt0xO9yswktqPQAXSNr/enuojfQCKeYg1N5tv8pF1
	rgAYG+wTnMPrdB1Ym8iSE88=
X-Google-Smtp-Source: ABdhPJw1i63Z4MZwwJtd3OMvLi9vhxSYADH7JWKiwrmGOCjjB46FxByAwguzRqoyEely9YMgutZj+Q==
X-Received: by 2002:a5d:58ec:: with SMTP id f12mr19724789wrd.247.1628414012041;
        Sun, 08 Aug 2021 02:13:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:a191:: with SMTP id u17ls672662wru.3.gmail; Sun, 08 Aug
 2021 02:13:31 -0700 (PDT)
X-Received: by 2002:a5d:474d:: with SMTP id o13mr807481wrs.256.1628414011152;
        Sun, 08 Aug 2021 02:13:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628414011; cv=none;
        d=google.com; s=arc-20160816;
        b=rJcHYERKHqA+CPpMGKahqKHd35AEXBDmQuCCYtMXEJyvvk9XHHMHpUDdIWalJ7hO5b
         4gr8krhd7KljTjysIcwa+GJ8sZm4gVlijI63zv9n3by4cvFdVGgGcW+MzocBHuK3PeTx
         KNjay+/rq8CKLQb2yUFl+E2UkFzst+415mZ4an+HmvyFJX7nSOI50kvgN/aaUJsX6UGf
         IONn9eecZp+sGqhpu0SgJn4f7eSzLRH5pegUwW4uimJoOurMBz07mKj+PEV3sdO8cJqv
         y6PP+cZARqfMIl545vzJA+0HrL4dhjbKiRvdZSql8MryxFhFyakCbFsVKaB7m2QwGcis
         YYlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=kI8nripGI9Tg1l//xQOF+aXOzV8hm0gKgjxQAdZFl24=;
        b=KEyn2bZMze5wBGggGN25hA5olqofPc1vtp0+2jIsrkNVZHMuhuzdYcZpPA8mBCqil5
         lvdcSnW6TNnP2VsFLiChj+J6heQ9becDGhnWs/bwdiiMVOC1ExPSF1hx6zDh6irbJNnN
         cVytCED98qJmt+T8GBr7bo67uiTW12gGOvoIQhS/t/M6tu7uPvsDf9fMxjv6t1Fak6wL
         OvFzbejEsJCa4thwkbAOPywQ2MmAooJQZ9ZCg0wJ5hk04v8oZMbGfaF2OjDv7vhuTAgd
         xxRV/RN4/pwgAbZqiIx8SGNFFpyftaAKFIGruSOaKyUo7yaEmxnYB7ZwfPsw9m9nxODU
         cWvA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mozilla.com header.s=google header.b=LdLFXAZ6;
       spf=pass (google.com: domain of sylvestre@mozilla.com designates 2a00:1450:4864:20::332 as permitted sender) smtp.mailfrom=sylvestre@mozilla.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=mozilla.com
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com. [2a00:1450:4864:20::332])
        by gmr-mx.google.com with ESMTPS id l16si703630wrp.2.2021.08.08.02.13.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 08 Aug 2021 02:13:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of sylvestre@mozilla.com designates 2a00:1450:4864:20::332 as permitted sender) client-ip=2a00:1450:4864:20::332;
Received: by mail-wm1-x332.google.com with SMTP id n11so8474700wmd.2
        for <clang-built-linux@googlegroups.com>; Sun, 08 Aug 2021 02:13:31 -0700 (PDT)
X-Received: by 2002:a7b:cc07:: with SMTP id f7mr6271241wmh.134.1628414010736;
        Sun, 08 Aug 2021 02:13:30 -0700 (PDT)
Received: from [192.168.8.108] (137.red-176-87-227.dynamicip.rima-tde.net. [176.87.227.137])
        by smtp.gmail.com with UTF8SMTPSA id d9sm4978444wrw.26.2021.08.08.02.13.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 08 Aug 2021 02:13:30 -0700 (PDT)
Message-ID: <89b3f65d-b2c8-bd39-24a6-fd6b7f146a98@mozilla.com>
Date: Sun, 8 Aug 2021 11:13:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.0
Subject: Re: ERROR: modpost: "__raw_writesl"
 [drivers/i3c/master/i3c-master-cdns.ko] undefined!
Content-Language: fr
To: Nick Desaulniers <ndesaulniers@google.com>,
 Philip Li <philip.li@intel.com>
Cc: Chen Rong <rong.a.chen@intel.com>, Nathan Chancellor <nathan@kernel.org>,
 clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
 linux-kernel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 Linux Memory Management List <linux-mm@kvack.org>,
 kernel test robot <lkp@intel.com>, Brian Cain <bcain@codeaurora.org>,
 Sid Manning <sidneym@codeaurora.org>
References: <202108041936.52T4sUU6-lkp@intel.com>
 <CAKwvOdmOTNTGvGeaRKSp4f6M1PC-HQLjMoaeQU6WM9ygxuU5_w@mail.gmail.com>
 <20210806102246.GB1330186@pl-dbox>
 <CAKwvOdmP1Bb0wkyUJAs-n5wT-obH56jw2zcBpT7jpV84id4tfw@mail.gmail.com>
From: Sylvestre Ledru <sylvestre@mozilla.com>
In-Reply-To: <CAKwvOdmP1Bb0wkyUJAs-n5wT-obH56jw2zcBpT7jpV84id4tfw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: sylvestre@mozilla.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mozilla.com header.s=google header.b=LdLFXAZ6;       spf=pass
 (google.com: domain of sylvestre@mozilla.com designates 2a00:1450:4864:20::332
 as permitted sender) smtp.mailfrom=sylvestre@mozilla.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=mozilla.com
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

Le 06/08/2021 =C3=A0 18:57, Nick Desaulniers a =C3=A9crit=C2=A0:
> On Fri, Aug 6, 2021 at 3:28 AM Philip Li <philip.li@intel.com> wrote:
>> On Wed, Aug 04, 2021 at 10:18:10AM -0700, Nick Desaulniers wrote:
>>> On Wed, Aug 4, 2021 at 4:39 AM kernel test robot <lkp@intel.com> wrote:
>>>> Hi Nathan,
>>>>
>>>> First bad commit (maybe !=3D root cause):
>>>>
>>>> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux=
.git master
>>>> head:   d5ad8ec3cfb56a017de6a784835666475b4be349
>>>> commit: 6fef087d0d37ba7dba8f3d75566eb4c256cd6742 hexagon: handle {,SOF=
T}IRQENTRY_TEXT in linker script
>>>> date:   4 weeks ago
>>>> config: hexagon-randconfig-r023-20210804 (attached as .config)
>>> cool, one of the first reports from 0day bot of hexagon :)
>> :-) yeah, we just enabled it. BTW: we use one specific version of clang,
>> does such hexagon support work in latest clang 14.0.0?
> Yes, it ought to; we're using ToT llvm to build it in our CI.  I'm not
> precisely sure about clang-13 yet until the apt.llvm.org binaries
> exist for that branch.

The branch already exists. The webpage wasn't just live yet but it
should be a few hours (CDN):

https://apt.llvm.org/

Cheers

S


--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/89b3f65d-b2c8-bd39-24a6-fd6b7f146a98%40mozilla.com.
