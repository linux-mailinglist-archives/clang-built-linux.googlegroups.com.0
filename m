Return-Path: <clang-built-linux+bncBDYJPJO25UGBBGGTRX2AKGQEKPTXMAI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x439.google.com (mail-pf1-x439.google.com [IPv6:2607:f8b0:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AEE1199AA8
	for <lists+clang-built-linux@lfdr.de>; Tue, 31 Mar 2020 18:02:34 +0200 (CEST)
Received: by mail-pf1-x439.google.com with SMTP id n28sf18869094pfq.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 31 Mar 2020 09:02:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585670553; cv=pass;
        d=google.com; s=arc-20160816;
        b=a26oIrdLixfD1zCE15yzbSk/h9kaCbM6nXRGeWtwSSITgTpwMnofavTABYHlAuonrw
         cqNO0K5E2L+uNL0TxAuu5EAbOPudYWgzcl3wCM+PcOXdqgFKDRyPQQZh8gY/BY4LCt9e
         /SNjSC07O+wQMRK89W62NWyFwk7TSlEp3XHELMAMAZdUaZH0xHjL3zDhe5XmJrlmI5lH
         aYoay+dImKltyH73B0Cs50F1Zs4DMpXHk61o5b0eyKtipIAffH3Mw32qRo6q+Hue2JM4
         2xrDtgLy6bjjzR6F1UpiPNxQwpWVcdGDzcJQovaG8DFpqy9G+xn8cQT2hMdYi++oWozx
         0OMw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=RaubVT4r/QNzuScNS/l0v11C+DhIPVokLdhf+8PkwaU=;
        b=Ya2PY+V8qAErFqltWKQOLBv+ky+FV8Vc1FCRgPzVzLA7Vnb1VnhdiaEWPMa8GAGLqY
         XqO489YqejMAN2RJHCCsLoBNvM6/rmZiGvbDhH80rEwpPZJpMFFyJm1L+du6OUnCEfoe
         TnWgUYKnL9DJMen9qGKRmQY/oChPgW5zMsKwIxEZhiMKPQ6Cah6glzPrQJ/BQ8yJk5WF
         iedGCM6T3tPaFV4EEUsfJpPKMfuZkCUlyrBB7G3aQIsukIG3cgzsZRBuncNk3T8DTcye
         NFCvPt8vrKiEfgrLZfwzer6dmpygnpZKHcU56h+9zgVmem+GR1tvcyp/nQyjPcTyYX65
         biIQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=o3zehxjm;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RaubVT4r/QNzuScNS/l0v11C+DhIPVokLdhf+8PkwaU=;
        b=kb9X7CjbWIvlPCOjHrn5+TmlTDNu1O452y/8om9T9GIgdi27KORnCDBsBhAWSIhQSc
         AJJaqf/PeIRCQDEqYeFZMGDwZBJFTAdBZ9DW/fEP7UCWq6j2rlX/muaDQDticYHHbC55
         j+dcBImvEoTdiyXe/CV997Q6eC001LrmrpUhGmpsG+LRYoLAttmE/aJjijD/6QO+2XVa
         QydMk1AMo0OQ5DyhvdJTlWX6umwt/43XmpYrBg8lcyZBpzRsEFbeH8vLG7GkxyowWw91
         PKbMjnrbeaOfqfjikZPX2l1G8bSe6uDf+0j1yyqJbXWvohulgpJroe2J/thIu/uWUaS0
         rj6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RaubVT4r/QNzuScNS/l0v11C+DhIPVokLdhf+8PkwaU=;
        b=oXRvuZ1MvawyULLSPWFGZsA3SS8dWbqP8fzrY07dYL6M7ld9I55223PLNaMhIf2VfK
         /kzWONk3+ABZR4uxoQvZmZKSBQZ4iHKKBUmslAt+CbXcUW0m6QrCcipLFLoJIXgdbErY
         wVT3TASMpYM3QgPIpqv4x5OeUiN+EkfBrhDxwzyS5eGyhkj3Y2G0lnkRpPIWg/zIczX0
         ewdtUuJYz1qVeWGc5ha+rpayBeNXv+EgHSVkVBar6y3Cvg6sHZwMw71a1ayMi4M1+SPL
         ZSSWwlw8ECAt9Z6bXjDKy3DoqbwNPConL86io19saCI+RwcYL61C8aYg8JoDJGy4ODbu
         jEgQ==
X-Gm-Message-State: ANhLgQ0Al7fCPo85cx1BwGjELKGZk6UYqLIcgGmFZD15ljp8E3TzYL7I
	mNWkI9u51gBQBhpu6Z990+s=
X-Google-Smtp-Source: ADFU+vsXKGOB0+jBuDobQP+2pwXGf1lGso+VLYJN2ux+j+OC1z/bdzLmQfo6OX3R5l9EYKiEznY0Qw==
X-Received: by 2002:a17:902:c193:: with SMTP id d19mr18416742pld.327.1585670553077;
        Tue, 31 Mar 2020 09:02:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:332a:: with SMTP id m39ls3053294pjb.2.gmail; Tue, 31
 Mar 2020 09:02:32 -0700 (PDT)
X-Received: by 2002:a17:90a:30cf:: with SMTP id h73mr5040198pjb.189.1585670552602;
        Tue, 31 Mar 2020 09:02:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585670552; cv=none;
        d=google.com; s=arc-20160816;
        b=DhK4Og7YZKDuOnBEgKswQkHvJTECMSqRpE8B7qvqnJ5bkUI3+N5CGWLbcxBL9Keqwc
         t634I4lNe6uKdIpzkYjBOSQa78nm4HzCqLkHedfNzaHGhVeXGRYtkq8hIr8hiNKeN2l0
         +cfjT0mqQGf2eGJKSZpYsjSpFqxAcGk1wqfIpUQR8wOwInXV9Qb+Uagukv4a3g6k05fn
         V1W+308fyPZXcXN/7Ql9G/Kw6Vg1NPLNYAT8IRxi1zN9Ao6Oxg68FzKh8IoOCo/vBEXL
         rHr8RW0hNzZUoaV0iifDRyfHgQtp6s0zql9zoTTXWGC6OJvJ1Hre1LZGgHBxs0hMLE1Y
         U16w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=eZXXG443uKpSgfNEJ0dEluZmkv04301vNY8sTrH9njo=;
        b=b9mclZZfo7z0y5m98l9X12R9/eXHYibndUV/Hkgu4qTDQmnTFPO5HbsCqppeUfywfV
         AZ5dLORsolQMH3sCFEfeFvTp+AvYrIDr40hlEv1T8AE7qT1c3VFYAdrYzujlByjrcIBA
         LwNksxwQvKi7SFYYfhuJsEZodn1t2h8iOSh7W6SRKL/LC3KexS033J0wle8bRwJENtsc
         b+ImJbpRnoNfq8/LdFixPwrz7hfAM2xoceGnNgDJablur+2x+WGPoQfzquYZQjeY7PUq
         jviR2PmMvtKKVVka5x+ugyZIXd9PX6gx+aJUpXePQ9/SEiXduBUoHW89WtAV6eT9x//a
         Gnjg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=o3zehxjm;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id k3si1065015plt.1.2020.03.31.09.02.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 31 Mar 2020 09:02:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id b1so10520961pgm.8
        for <clang-built-linux@googlegroups.com>; Tue, 31 Mar 2020 09:02:32 -0700 (PDT)
X-Received: by 2002:aa7:919a:: with SMTP id x26mr15382467pfa.39.1585670551606;
 Tue, 31 Mar 2020 09:02:31 -0700 (PDT)
MIME-Version: 1.0
References: <20200326194155.29107-1-natechancellor@gmail.com>
 <CAK7LNAQ8uHtuhd7DiGGOLbkEX524rPjfUuWAHjU-_92Ow3_1Pg@mail.gmail.com> <20200331101122.GA6292@ubuntu-m2-xlarge-x86>
In-Reply-To: <20200331101122.GA6292@ubuntu-m2-xlarge-x86>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 31 Mar 2020 09:02:19 -0700
Message-ID: <CAKwvOdkkpnkLwtNctSnebXTwumfprEQtLiuM5_4e-UBFTYBUxg@mail.gmail.com>
Subject: Re: [PATCH v2] kbuild: Enable -Wtautological-compare
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Michal Marek <michal.lkml@markovi.net>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Dmitry Vyukov <dvyukov@google.com>, 
	"Gustavo A. R. Silva" <gustavo@embeddedor.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=o3zehxjm;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Tue, Mar 31, 2020 at 3:11 AM Nathan Chancellor
<natechancellor@gmail.com> wrote:
> Just a follow up, those two patches have been picked up and should be in
> this coming release:
>
> https://git.kernel.org/balbi/usb/c/58582220d2d34228e5a1e1585e41b735713988bb
> https://git.kernel.org/rostedt/linux-trace/c/bf2cbe044da275021b2de5917240411a19e5c50d
>
> As of next-20200331, with the former applied (because it is not there
> yet) along with this patch, I see no warnings on arm, arm64, x86_64
> all{mod,yes}config.

kbuild test robot is testing more arch's than that with Clang so it
may report if it finds more instances of that warning in those.

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkkpnkLwtNctSnebXTwumfprEQtLiuM5_4e-UBFTYBUxg%40mail.gmail.com.
