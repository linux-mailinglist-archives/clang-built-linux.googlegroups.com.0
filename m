Return-Path: <clang-built-linux+bncBD4PP5X5UEBRBWN3U36QKGQE36VNEDI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53f.google.com (mail-ed1-x53f.google.com [IPv6:2a00:1450:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id 37F392AC577
	for <lists+clang-built-linux@lfdr.de>; Mon,  9 Nov 2020 20:51:54 +0100 (CET)
Received: by mail-ed1-x53f.google.com with SMTP id h6sf3150055edt.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 09 Nov 2020 11:51:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604951514; cv=pass;
        d=google.com; s=arc-20160816;
        b=BtXBXKVix2nO65YnUfWsbvL8FGVtdFQDmzRZUv2n3lbRLnq1p7vgfxzCxEFP9foAQx
         crk/lMd9GzZXAEPDtjNWi+hckFojTGIuXXOyXQlrf2cQ4XNaEKiiql8ow6ID+eEzxpku
         ivtt+XQQ0lNLlDXAn1zKiF7Dt1kQo97UMVoBUTfl9gaxlak+bAob0scTz9ghBsESfJ5Z
         USjbZvb7/EyqqmeVRfsfST8AHoYZDayctzchUmHVs/tUv5R2oHmlngHi+tpm9PPtF0U3
         9DYI8QRtVicA5eLVNltN49m2+plE+Mz0RjDyvCrhDxkYmGwwrzhDnJ+xb7Jbq/NdpJ8M
         Fgfw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=LlHta/XjN4zgbhfZxk+FjPbiMA7sz+tDOVHeY6dt18E=;
        b=eWknRO4eHprvYRFzvFhO3q0nKV2mmOFUMc486yWxlFJTHxry2IEuFUWNOxK3uVsok5
         KIZeLPkJAGkWNpp3A+Qv8OfUQ+v8X2JxGP1DzpIfgFKk9+182sxJtg+XkllqQvdb2bLM
         80qPb6rZlTuWcjccmDWgIMDEnNUQV80NOK07J6DHMJdDyNRyX5V3CAsNWq57ZrSkfmlL
         eHtTTzoDS6uQ2f6/uZLN40gZXpAeRRrKxEV1sVZwG9Pbro9ixMiqYoheRodb/f0hKss0
         W4zPbKEm67SbcGFw8voV9RUZ0hdAbjreqY01yF5Mf728DCMuLfklvR+iv1dG/BKVjVj7
         O/Lg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of adrian.ratiu@collabora.com designates 46.235.227.227 as permitted sender) smtp.mailfrom=adrian.ratiu@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LlHta/XjN4zgbhfZxk+FjPbiMA7sz+tDOVHeY6dt18E=;
        b=W0XYcGJYmbokSbryVWSXvgFyLf6Y7rtdi3Bll5XZ40tVLh7XmY4ntHeIl0XyQYFzMS
         WafqWC4Kg9K5G6ThXNNc6hbWbWjUgGs/ekINT2f6hXnPtYas+MO1ff6kiNRIDPvrBqIE
         IQE42W+3JqzLN3N35vopu/lxegYNE6fMM0+ail0qlGCECldKeYQZNlrSbcasUxYOcXgk
         DkUxPzLH8aHoDILR2cs7XhoUbtoGRywa7WK3awwF6++dNwZjdM4mpAh5utkMwyKe3PWi
         ZDi5bTnRPNGffhTDFdBhDp8sbccu44VADjsE9Vs0xxg+RibAa+mg4Fv/iZmzJRGA+Ml3
         J/RQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LlHta/XjN4zgbhfZxk+FjPbiMA7sz+tDOVHeY6dt18E=;
        b=tD2XePZWdy8aMUO4+Zk4G/iQ/77kPkE5j97Icb1AMVn7W3+9x1t0ZqPumKi1nmBFeV
         XAo9lLyA6g/IIqSoQ2IiGihhkVl+wtenCi9e+hyEe31GFBa5n/IDwYaPUs+HJQNN2jRI
         ERFmFcHv2iDq/88qpVO3lSSd+6AIpXIFcuY8VErEcF7Ot0JtldO94Z11acO9mIpmgs6s
         KQvAYvYIXOP2rxByQvrM/lDf4rdm7XQX/U/Dxfy+QfAde0IWTvn1/XN4wkBfxzPv2S+a
         xtRxzgKYkZvQ64FCo3x7lHinbOFaEiURngSNwmHV5SSEzwE413UlsFbqLI7K+mPpYBKQ
         PHIQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532yZoO3uOz9HfbeVCoEruh/GNiE68KSyYcRbykpctnZ0HtnUvew
	yo/BEUyaTbGREFuT++2rG14=
X-Google-Smtp-Source: ABdhPJx+2WaVrAOIlMEzx7ugKlt6zLcstRtczo9YReDYpbB1fZZzd21x4CBaZpMcfyY53xwPCWblfw==
X-Received: by 2002:a17:906:2697:: with SMTP id t23mr17122910ejc.292.1604951513911;
        Mon, 09 Nov 2020 11:51:53 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:5591:: with SMTP id y17ls4962020ejp.5.gmail; Mon, 09
 Nov 2020 11:51:53 -0800 (PST)
X-Received: by 2002:a17:906:39ce:: with SMTP id i14mr17253445eje.170.1604951512953;
        Mon, 09 Nov 2020 11:51:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604951512; cv=none;
        d=google.com; s=arc-20160816;
        b=Lhib8Gyo+lO2XcDqijcJis/IJENtr5FoeLerK+dNRpZrf5krNv6opjr709wOAojFUS
         YC6cyFeqYCXf96fSNd74bkG6dteK4TD3OdgqFB481vOlCWm1j1WryET0NwfYiPPkoJbs
         /GQ5mTO2E840su/Yh9hiuDVq3/MURhPkUuDCgqKxFcohNwr2k2jzO/ktFpWJmqQaBvzt
         1S37WquUFF9VhtrwW+xrCS2JakbVsYgm9wVk3A3ZDyuKR8rcf1+wID3zT5sPf0NHmjlt
         tIhCJlHgzRZ7zz2/Z5l7D6ltzWSGDRfW+kVp1H9fKGvlxZtBJhsYAnD326oKmFHlEZ1W
         gMhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from;
        bh=au9eCwJGC0li086dwSRffb6Z9dj43W2gyaPas/6HRgo=;
        b=saPS0asNYurup0KWRgEyahgeDBpJ1JquCrlXrMkBbBdIM0Z2LHnmbPDClChL6Zosuq
         QWu54QanBu4KUxgPUOU5g0AUMBmB8xiKU+oa5BVvJCT8EuIXR8jWwG/XpuKb22Z9wRYH
         sRlYI9FNR5vssAO1lC1WPCKhMYeqHk7hLPBZe7jOGIK3pqBcT4unNicNB2wfSTIUeZ7M
         p6uvODEnI71ugpSLY3Ga8fAOL2beOG1RX/QgZRPf3CvS0R9DqGl4UjW8ustuHqGPDqxe
         k9UalzrLLjQMZID/dIcJ9m6F0PPS5A/sSREsJra0w3VohPcFw27hZ/H+lYXE6Qz/9UL7
         nbkg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of adrian.ratiu@collabora.com designates 46.235.227.227 as permitted sender) smtp.mailfrom=adrian.ratiu@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk. [46.235.227.227])
        by gmr-mx.google.com with ESMTPS id c11si260169edn.0.2020.11.09.11.51.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 09 Nov 2020 11:51:52 -0800 (PST)
Received-SPF: pass (google.com: domain of adrian.ratiu@collabora.com designates 46.235.227.227 as permitted sender) client-ip=46.235.227.227;
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: aratiu)
	with ESMTPSA id 1FCDD1F45004
From: Adrian Ratiu <adrian.ratiu@collabora.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Arnd Bergmann
 <arnd@arndb.de>, Linux ARM <linux-arm-kernel@lists.infradead.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>, Russell King
 <linux@armlinux.org.uk>, LKML <linux-kernel@vger.kernel.org>, Collabora
 Kernel ML <kernel@collabora.com>, Ard Biesheuvel <ardb@kernel.org>
Subject: Re: [PATCH 2/2] arm: lib: xor-neon: disable clang vectorization
In-Reply-To: <CAKwvOdkodob0M0r_AK_4nG3atLGMyNENMd6qVAHSPa92Zh7UZA@mail.gmail.com>
References: <20201106051436.2384842-1-adrian.ratiu@collabora.com>
 <20201106051436.2384842-3-adrian.ratiu@collabora.com>
 <20201106101419.GB3811063@ubuntu-m3-large-x86>
 <87wnyyvh56.fsf@collabora.com>
 <CAKwvOdkodob0M0r_AK_4nG3atLGMyNENMd6qVAHSPa92Zh7UZA@mail.gmail.com>
Date: Mon, 09 Nov 2020 21:53:31 +0200
Message-ID: <871rh2i9xg.fsf@iwork.i-did-not-set--mail-host-address--so-tickle-me>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset="UTF-8"
X-Original-Sender: adrian.ratiu@collabora.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of adrian.ratiu@collabora.com designates 46.235.227.227
 as permitted sender) smtp.mailfrom=adrian.ratiu@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
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

On Fri, 06 Nov 2020, Nick Desaulniers <ndesaulniers@google.com> 
wrote:
> On Fri, Nov 6, 2020 at 3:50 AM Adrian Ratiu 
> <adrian.ratiu@collabora.com> wrote: 
>> 
>> Hi Nathan, 
>> 
>> On Fri, 06 Nov 2020, Nathan Chancellor 
>> <natechancellor@gmail.com> wrote: 
>> > + Ard, who wrote this code. 
>> > 
>> > On Fri, Nov 06, 2020 at 07:14:36AM +0200, Adrian Ratiu wrote: 
>> >> Due to a Clang bug [1] neon autoloop vectorization does not 
>> >> happen or happens badly with no gains and considering 
>> >> previous GCC experiences which generated unoptimized code 
>> >> which was worse than the default asm implementation, it is 
>> >> safer to default clang builds to the known good generic 
>> >> implementation.  The kernel currently supports a minimum 
>> >> Clang version of v10.0.1, see commit 1f7a44f63e6c 
>> >> ("compiler-clang: add build check for clang 10.0.1").   When 
>> >> the bug gets eventually fixed, this commit could be reverted 
>> >> or, if the minimum clang version bump takes a long time, a 
>> >> warning could be added for users to upgrade their compilers 
>> >> like was done for GCC.   [1] 
>> >> https://bugs.llvm.org/show_bug.cgi?id=40976  Signed-off-by: 
>> >> Adrian Ratiu <adrian.ratiu@collabora.com> 
>> > 
>> > Thank you for the patch! We are also tracking this here: 
>> > 
>> > https://github.com/ClangBuiltLinux/linux/issues/496 
>> > 
>> > It was on my TODO to revist getting the warning eliminated, 
>> > which likely would have involved a patch like this as well. 
>> > 
>> > I am curious if it is worth revisting or dusting off Arnd's 
>> > patch in the LLVM bug tracker first. I have not tried it 
>> > personally. If that is not a worthwhile option, I am fine 
>> > with this for now. It would be nice to try and get a fix 
>> > pinned down on the LLVM side at some point but alas, finite 
>> > amount of resources and people :( 
>> 
>> I tested Arnd's kernel patch from the LLVM bugtracker [1], but 
>> with the Clang v10.0.1 I still get warnings like the following 
>> even though the __restrict workaround seems to affect the 
>> generated instructions: 
>> 
>> ./include/asm-generic/xor.h:15:2: remark: the cost-model 
>> indicates that interleaving is not beneficial 
>> [-Rpass-missed=loop-vectorize] 
>> ./include/asm-generic/xor.h:11:1: remark: List vectorization 
>> was possible but not beneficial with cost 0 >= 0 
>> [-Rpass-missed=slp-vectorizer] xor_8regs_2(unsigned long bytes, 
>> unsigned long *__restrict p1, unsigned long *__restrict p2) 
> 
> If it's just a matter of overruling the cost model #pragma clang 
> loop vectorize(enable) 
> 
> will do the trick. 
> 
> Indeed, ``` diff --git a/include/asm-generic/xor.h 
> b/include/asm-generic/xor.h index b62a2a56a4d4..8796955498b7 
> 100644 --- a/include/asm-generic/xor.h +++ 
> b/include/asm-generic/xor.h @@ -12,6 +12,7 @@ 
> xor_8regs_2(unsigned long bytes, unsigned long *p1, unsigned 
> long *p2) 
>  { 
>         long lines = bytes / (sizeof (long)) / 8; 
> 
> +#pragma clang loop vectorize(enable) 
>         do { 
>                 p1[0] ^= p2[0]; p1[1] ^= p2[1]; 
> @@ -32,6 +33,7 @@ xor_8regs_3(unsigned long bytes, unsigned long 
> *p1, unsigned long *p2, 
>  { 
>         long lines = bytes / (sizeof (long)) / 8; 
> 
> +#pragma clang loop vectorize(enable) 
>         do { 
>                 p1[0] ^= p2[0] ^ p3[0]; p1[1] ^= p2[1] ^ p3[1]; 
> @@ -53,6 +55,7 @@ xor_8regs_4(unsigned long bytes, unsigned long 
> *p1, unsigned long *p2, 
>  { 
>         long lines = bytes / (sizeof (long)) / 8; 
> 
> +#pragma clang loop vectorize(enable) 
>         do { 
>                 p1[0] ^= p2[0] ^ p3[0] ^ p4[0]; p1[1] ^= p2[1] ^ 
>                 p3[1] ^ p4[1]; 
> @@ -75,6 +78,7 @@ xor_8regs_5(unsigned long bytes, unsigned long 
> *p1, unsigned long *p2, 
>  { 
>         long lines = bytes / (sizeof (long)) / 8; 
> 
> +#pragma clang loop vectorize(enable) 
>         do { 
>                 p1[0] ^= p2[0] ^ p3[0] ^ p4[0] ^ p5[0]; p1[1] ^= 
>                 p2[1] ^ p3[1] ^ p4[1] ^ p5[1]; 
> ``` seems to generate the vectorized code. 
> 
> Why don't we find a way to make those pragma's more toolchain 
> portable, rather than open coding them like I have above rather 
> than this series? 

Hi again Nick,

How did you verify the above pragmas generate correct vectorized 
code?  Have you tested this specific use case?

I'm asking because overrulling the cost model might not be enough, 
the only thing I can confirm is that the generated code is 
changed, but not that it is correct in any way. The object disasm 
also looks weird, but I don't have enough knowledge to start 
debugging what's happening within LLVM/Clang itself.

I also get some new warnings with your code [1], besides the 
previously 'vectorization was possible but not beneficial' which 
is still present. It is quite funny because these two warnings 
seem to contradict themselves. :)

At this point I do not trust the compiler and am inclined to do 
like was done for GCC when it was broken: disable the optimization 
and warn users to upgrade after the compiler is fixed and 
confirmed to work.

If you agree I can send a v2 with this and also drop the GCC 
pragma as Arvind and Ard suggested.

Kind regards,
Adrian

[1]
./include/asm-generic/xor.h:11:1: warning: loop not vectorized: 
the optimizer was unable to perform the requested transformation; 
the transformation might be disabled or specified as part of an 
unsupported transformation ordering 
[-Wpass-failed=transform-warning] xor_8regs_2(unsigned long bytes, 
unsigned long *p1, unsigned long *p2) 


>
> -- 
> Thanks,
> ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/871rh2i9xg.fsf%40iwork.i-did-not-set--mail-host-address--so-tickle-me.
