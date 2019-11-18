Return-Path: <clang-built-linux+bncBDYJPJO25UGBBHGHZPXAKGQEI3N7H4I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13d.google.com (mail-il1-x13d.google.com [IPv6:2607:f8b0:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id 767FA100B7C
	for <lists+clang-built-linux@lfdr.de>; Mon, 18 Nov 2019 19:31:57 +0100 (CET)
Received: by mail-il1-x13d.google.com with SMTP id q1sf17106665ile.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 18 Nov 2019 10:31:57 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1574101916; cv=pass;
        d=google.com; s=arc-20160816;
        b=q6p3KxBJhfxjlTTAeXhWkxnRXFG6OA1SMhJHvTBuuDctEJ4DDE3IOl6XgnMgkCH6lf
         b9iB1iqTXcGPkhn82yZy1c9h3UuvhPa7nZpxmBULf/o9WPCL2dJUk23BMiWtb+Ci8WL9
         1IoVdjMA6KYAwf/Y/VrLjNX+xQ6c6xFrxHZ0HgSlruccDjSNCkPq+zcDeIT75G2yG4ER
         aioyFMpsiQ5geQ7mlwBDJ+JI7ahuANPxTkFlWLOfrZGJt7gmxnPksT3edEx4ED4+A1/2
         uwx99ppZB/hqnmg3bQUgsNd6oq4COZFQRqed8ETGwWsmvmqXDanyYUKzVsnwbjv1hQSZ
         ZRzA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=p02fHQxPGFjrlQWGQoY0N/zWjHxgv4VUKbj7InLGPTE=;
        b=KweEkKmL6yqSZotkklJSMIrO1YzHLNu2AL7S9bMjs7iwJwKh9/QHT51m0xfWnhBftz
         1+e+OmxQClLbI0VZegyhdF5JZi0rKyeE/JYbzxGWnEF6ehQUZ76NovYG+2NsT6HuT5Qt
         l81OzhsGE8v5K/6G4GCayEfk6KxSJL61yN9DzfzxHBDizx3U21qV9m9nO4UFaW6k0PRB
         nivyGAijh+nRoAj9VfI+3YKqVlu1xO1bnK+iC4p5TD9iV3Hp2Uf8v685czOiVw/UmES3
         E9gJZd/FL5t4HtnmHjf6p6+/LA136zVL/3BCFEXPZWhRgUHsJbY8TGEY6VIleWLcId8d
         ziUQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ZEu6MqIW;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=p02fHQxPGFjrlQWGQoY0N/zWjHxgv4VUKbj7InLGPTE=;
        b=Vsflw7D3JXbheO2//UC5IoUUZ+tPeQU8CfLbLGFUr7rR577G7emMKUim+dozFysbYZ
         F3ZQ0uZUl0ImBx6sLAz4ZsL1NkbxzLNfClGyLHwGfB5AePHxaKlpcuLM3SJxblvwU039
         M0jf1ZY3k6H0j7ScgfVtBymJ1p9bylNl+xpXVwnuWRBp79ehGaY/2kXNJD8/KwEjU74X
         WYKqZ89WinFtz6YxySKAtmBDa/8x9FID8xa8NEwXuRyxd8k9fFSHxAabYzsqMuBve6Kz
         Z+4xDsutlXHWjXF8zYTifGfEzx2b54Jq27BnD9TT5E1RogQutINoTSkeXW+sX1E5H1j7
         0Jfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=p02fHQxPGFjrlQWGQoY0N/zWjHxgv4VUKbj7InLGPTE=;
        b=Mv1utHFeKw98ABh73N6MvlU2lbeZOEuj0+mdfZOSqGAqrh6TIAJY9jwAuqrQos4t9/
         Kk7ja1ai7nkIBCVT1D+0QKHKScoFgZ1k2ZIKIAh3rFI0uwntLdVqCjh0GLb4ArO+tHPM
         88uk6yGOVYU8uXHpXvtl03rUlfSOl/5eJUpXEkn5UoahiTjCf0eV6elb9zqkjxVmZ9I/
         fM5XlhYQkocvzH4SL3x6TcUDlC/Lb8+KgJMYKQWaHnOqmoO6w93vnDWj/arm5d9vWHi7
         tia8sAHQSMzNwobU9fJ2CJS39UGqLNQXrTvT6Kykti7QH4hbMMqZA2j09XL/jKNIhOr9
         ZOvA==
X-Gm-Message-State: APjAAAVxIrLwuCv0Sz1OpEnG2KFK+kUtuFRqrJVxmBEQwTk34vxDYOby
	33SmBeVFhTWL+wKayEphSxc=
X-Google-Smtp-Source: APXvYqwEMjCfltZNUOEUet1hLSxbHEnbZy6/mIG6aoEeZ4iWP+urBSUMoIWEKoBuBmlLIGMRr4dL3g==
X-Received: by 2002:a5d:8881:: with SMTP id d1mr14362732ioo.308.1574101916418;
        Mon, 18 Nov 2019 10:31:56 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5e:960e:: with SMTP id a14ls2766442ioq.11.gmail; Mon, 18
 Nov 2019 10:31:56 -0800 (PST)
X-Received: by 2002:a6b:b797:: with SMTP id h145mr10776609iof.0.1574101916101;
        Mon, 18 Nov 2019 10:31:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1574101916; cv=none;
        d=google.com; s=arc-20160816;
        b=XAiMo9ZVQiLiXO9w0uRL9re31V96wVS4ZtTW2XBU0NzjqRLe+DA1YZ/umPSmY7bPnR
         zfiYrwTGy3yT6ozunhYaVh2uZqzp8oTRS7bG5AG3Jyyz2WybuPEtnhXMOipBbxeCpz1A
         cYq1l5iadugX+0jCREc4J/su7PKABgkNIahtncTRq50CMYFkTdED8TKdCO5dQvqvWPDl
         PsDrN0jJrv8fUzaOXtJV1cSOqRP2W22qrPnVSZApiwyVANvCkNldxAYARNhOv7exUXWW
         8XuoDQmVFQUjUReEFAFJ4jWj9K5hLcpGn/E9GdnRD7kIdJJfwVGI6yGAZYu0rY3KLeFF
         OgFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=A4WMyPwwd33AeWG8Iqc5mgyWoDalMpSQTRsm3rGqwlk=;
        b=trH3zjx2TxCjidJ09bSBDcwFCa59QplqkCjc2b7efHae3c+iD3rPOOrMwd2RA8kRVt
         5Ohk9/eX1szJxEsi91H2mzkht+DXWvr32dkUY2OZC2Qt66ly7VPRngSY4cMXXG2DNEyi
         A/4Bv9MqYhSt52gcYNcT60x/rYSweHtMkqlPSNAY6mckP5aSojocD8RvHVpk6ITvSbD3
         nnUcceeMkS6z/h9TdKkKXDdxQzySEVQoZWZhk5Mx281HfSa8Lls/ecvEZeuY24c2ocuK
         1hw97y7oVBVjsY29nZQ9KFGn6IndBOvMHLlJAo3/7M4YJNimgo3zTpzeEpPNKKniWuWL
         wvTQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ZEu6MqIW;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id x8si1205789ior.1.2019.11.18.10.31.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Nov 2019 10:31:56 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) client-ip=2607:f8b0:4864:20::1043;
Received: by mail-pj1-x1043.google.com with SMTP id t103so1732444pjb.6
        for <clang-built-linux@googlegroups.com>; Mon, 18 Nov 2019 10:31:56 -0800 (PST)
X-Received: by 2002:a17:90a:1f4b:: with SMTP id y11mr418957pjy.123.1574101915060;
 Mon, 18 Nov 2019 10:31:55 -0800 (PST)
MIME-Version: 1.0
References: <20191031194652.118427-1-samitolvanen@google.com> <20191114165544.GB5158@willie-the-truck>
In-Reply-To: <20191114165544.GB5158@willie-the-truck>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 18 Nov 2019 10:31:44 -0800
Message-ID: <CAKwvOdnwL8cXGDykq4YAQi4bXYc7Fccqm-ki61-nySP0h+8ZxQ@mail.gmail.com>
Subject: Re: [RESEND PATCH] arm64: fix alternatives with LLVM's integrated assembler
To: Will Deacon <will@kernel.org>
Cc: Sami Tolvanen <samitolvanen@google.com>, Catalin Marinas <catalin.marinas@arm.com>, 
	Marc Zyngier <maz@kernel.org>, Kees Cook <keescook@chromium.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Jian Cai <jiancai@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ZEu6MqIW;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043
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

On Thu, Nov 14, 2019 at 8:55 AM Will Deacon <will@kernel.org> wrote:
>
> Hi Sami,
>
> Sorry -- I thought I'd already replied to this, but it had actually
> slipped through the cracks.
>
> On Thu, Oct 31, 2019 at 12:46:52PM -0700, Sami Tolvanen wrote:
> > LLVM's integrated assembler fails with the following error when
> > building KVM:
> >
> >   <inline asm>:12:6: error: expected absolute expression
> >    .if kvm_update_va_mask == 0
> >        ^
> >   <inline asm>:21:6: error: expected absolute expression
> >    .if kvm_update_va_mask == 0
> >        ^
> >   <inline asm>:24:2: error: unrecognized instruction mnemonic
> >           NOT_AN_INSTRUCTION
> >           ^
> >   LLVM ERROR: Error parsing inline asm
> >
> > These errors come from ALTERNATIVE_CB and __ALTERNATIVE_CFG,
> > which test for the existence of the callback parameter in inline
> > assembly using the following expression:
> >
> >   " .if " __stringify(cb) " == 0\n"
> >
> > This works with GNU as, but isn't supported by LLVM. This change
> > splits __ALTERNATIVE_CFG and ALTINSTR_ENTRY into separate macros
> > to fix the LLVM build.
>
> Please could you explain a bit more about the failure and why LLVM's
> integrated assembler rejects this?

There are currently more than one issue with `.if` assembler
directives we're tracking against Clang's integrated assembler
currently, particularly around the handling of special cases related
to "fragments."
Recommended reading:
https://eli.thegreenplace.net/2013/01/03/assembler-relaxation
This particular case looks like the error is related to referring to
section before it has been seen.  My current understanding is that
Clang's integrated assembler is one pass, unlike GAS, so it chokes on
references to symbols it has not yet seen.

> Could we use something like .ifb or
> .ifeqs instead?
>
> Thanks,
>
> Will



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnwL8cXGDykq4YAQi4bXYc7Fccqm-ki61-nySP0h%2B8ZxQ%40mail.gmail.com.
