Return-Path: <clang-built-linux+bncBDYJPJO25UGBBV5RXPZAKGQEXLV7K3I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc39.google.com (mail-yw1-xc39.google.com [IPv6:2607:f8b0:4864:20::c39])
	by mail.lfdr.de (Postfix) with ESMTPS id A95C01666D5
	for <lists+clang-built-linux@lfdr.de>; Thu, 20 Feb 2020 20:07:04 +0100 (CET)
Received: by mail-yw1-xc39.google.com with SMTP id o1sf3879395ywl.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 20 Feb 2020 11:07:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582225623; cv=pass;
        d=google.com; s=arc-20160816;
        b=t+i3vWbqNnBSnxoeAYphhOsULsa2rpmslC3GMVPPxH8Oc2vnN4WvrNyH5thbn3Nz/Q
         hBUgd9ktuUWAJ1jxRG3/y5kxJtfMsvlhihCwhMjio1al3MaVf5BXu36k25/QGWv1ytnW
         lK3Y332fRLVMbOex8fpeiqmhIT0X7VQU3WM8Gq5TlJ62Zb4wvRfPHGpY+Kktg2beLsgO
         ZJtewxaR0Rlsl8LzD+tTc3Ae87Rzx7cdsJqJQjSpnurd91k8dzsDEmo/vB1v7USgcCed
         co4AYc3/SjCRFbH54cczAtP5g4O0Kw56PDWOi9tF2QrHbzY4uSWz9BDbZbhKfnnhNbbZ
         Mn4g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:subject:message-id:date
         :from:in-reply-to:references:mime-version:dkim-signature;
        bh=wgWlFclsz3zrJASvAjpDANtM+rEK+Tu61jgFTtl0pwI=;
        b=V2GhuU//88UhFkTHxeyUERivIzPriK8+EpozalXVZ00Uo7MqxXnpcSQ6KY5QBZsoVe
         V26h33o4n0BzQVAudY2rv13FK2sBD7zznV4uFsZ6M+nVqEUjXHx8tL6/cEjmqR1bCvIl
         ud+CO7lCDNbiXVPHanxZzbA+f00V31kNbsOT6eAXgK2k3OvejjjngrRwt3Taqm4R5Tq5
         Oa5qVqgzpmwq7DlE5ETOa9fyymlG4BmhbaYpIHwP4aIgaLMamijPkOAoL2UxT7ivTVzE
         i7+qbO+eGxFl68P0/4yhXqLYG2fUf8VT0ggrairubHm9tgp4QAWuuqAl/LDZaOTYONxg
         iA8w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=DyMmSfuO;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wgWlFclsz3zrJASvAjpDANtM+rEK+Tu61jgFTtl0pwI=;
        b=I/KdWDcD2HpTJMvn3nmks+XeWf3pGop/Fx7U7juULc3m/YmQKLfu/ycYL7jONvtFuN
         CMffwwASgpPSWHL9oEjxxZ5MFhsPd6mT4+sAVU9Hc/3WJrXzdJCR+zXdYFfi5QqGZakN
         xIMktRqgj2APIr4QV+VfoS72eHxOC3nTYSuGeThD6nQTXn7WEV76zY00/pf8fvpIowjS
         5vrQy0Yxu9pMaOKkmW5zQWOECakofSvPzoq+z5rbe0StRsyBIIsZdHzVVrq/qWJVEiBJ
         CWNJO3ZKGJbs/34rj3AisPQVmf+oAxIpwibhns5dlgu8IlyrwtAewRDT3Q8hdGTZqOFM
         qxOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wgWlFclsz3zrJASvAjpDANtM+rEK+Tu61jgFTtl0pwI=;
        b=K2SY5X7xX82Y/75UjBeHe97usq/PRmJph3sYqL4Nf2df9tTIb2C6Iw2pJ6CiQ34OjH
         10pEnf+HZYIx9QRiluxmpUs0fj/+We0vLld4M1AZ1YLoMMfBbzT3CENUmo0y+O7h0drC
         GvQidY68Jsr0OgRtxa/seUNpVv/rODz7MhLQF4nv+2I6Txh5fLmrcXr02ZzatmqzF+nn
         m8jPocKSbfjfpa9IJagwkLI29AiShTVT041QABiT5uHQ1fgGBKr4wPq2OzXVCcHf9qOw
         23KHJkwTJpD4vUvmpb3avVT3oxu2FXirGvxUZ5GVOGV2JJ+40TBgDFByucIgyLMisndc
         tR3A==
X-Gm-Message-State: APjAAAUhd9+rvR6uKRnJtPhnA7nfqXWLpY03t+YLdxfOai84TNFX/cfn
	rCmP9aZv2Al/ZKhBP3sh+fE=
X-Google-Smtp-Source: APXvYqxoFhdQ15zBU7WQf++YVZnlMoATwI9lbErggM32GFsrr1YHbLO5Bxwl2d7LP8vantUfEB3rCQ==
X-Received: by 2002:a25:210:: with SMTP id 16mr31442171ybc.415.1582225623544;
        Thu, 20 Feb 2020 11:07:03 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:bd4a:: with SMTP id p10ls435727ybm.4.gmail; Thu, 20 Feb
 2020 11:07:03 -0800 (PST)
X-Received: by 2002:a5b:747:: with SMTP id s7mr31049589ybq.521.1582225623130;
        Thu, 20 Feb 2020 11:07:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582225623; cv=none;
        d=google.com; s=arc-20160816;
        b=bNkp3cAII9xCxvnbJGEjuHXU6zXSF/TLPvz5H1j2GnY/hgFofLZs3/ZX0V9hfuooBK
         cm/w25up+mWABzhFHUd0Qx+eUO4NAugoSCKWvRjc70mZHTSlPzPKRqdzmfy1javFMZlM
         sJL8bo++ComeIXD/2JopVwMdpRR9oNB6j7waJe/xqS/wpdRhOaouM48JLebljEKxrhkl
         K+Mp2aEXQs8z2+gTY2aAAE+eJh05oHi+XHSREuB93GYiFNqaT2UgDb8ArCheYYkFfory
         YpPeZD6/rvtjg0wXuLSVETVrME8jItcDmaNqCd6aXshHYnk9gZiyxIhjVrymS6ZJyp9u
         VCPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=5Iwg9T7vurz7beZchZKYi39FWaRyWEYxkFi3K72CYlc=;
        b=Rw75JFYy264SZsynocm+7Vyo28+3xZVZMB3eyzWcEhMbwjhw8dcg0s5Ibafpx2OvpF
         /cgBPaPB1W8t4tX93CUoXmvsAE5bONaI8JxLryvmNe/2SQb+WHSsf36tXFD5BRWuhVQG
         +gzJSciozYysZy1SDR62fDRChSxuQTYrnaZSS8IpnP/ubVzmucQ3pcRrYEMAVMmzCPLT
         N08IybHSD2x3f3JJ0Ean7VcpoTq8AMYc32a/4rzpt4235eLzAq2WRRpb45CmUoypdEou
         X41e4VUvFjMvmXTvgsv6efT8J9YH+lm6pyB5dB9io8AZhNBkgayFhJETqjPcvh0J3/Ag
         W3aA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=DyMmSfuO;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id y5si29647ybm.4.2020.02.20.11.07.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Feb 2020 11:07:03 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Received: by mail-pl1-x643.google.com with SMTP id g6so1919396plt.2
        for <clang-built-linux@googlegroups.com>; Thu, 20 Feb 2020 11:07:03 -0800 (PST)
X-Received: by 2002:a17:90a:7784:: with SMTP id v4mr5378843pjk.134.1582225621785;
 Thu, 20 Feb 2020 11:07:01 -0800 (PST)
MIME-Version: 1.0
References: <cover.1581997059.git.jpoimboe@redhat.com> <CAKwvOdnOrezCVzRSFfrXxXXgfPCNxeyi8=2-k9Fz=Y4xAe8fAw@mail.gmail.com>
In-Reply-To: <CAKwvOdnOrezCVzRSFfrXxXXgfPCNxeyi8=2-k9Fz=Y4xAe8fAw@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 20 Feb 2020 11:06:50 -0800
Message-ID: <CAKwvOdnp6OaB7Gw9XX7WmJF3cVjanPPRO3SUYDc29X14SSDWTw@mail.gmail.com>
Subject: Fwd: [PATCH 0/2] objtool: clang-related fixes
To: clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=DyMmSfuO;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643
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

---------- Forwarded message ---------
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Thu, Feb 20, 2020 at 11:06 AM
Subject: Re: [PATCH 0/2] objtool: clang-related fixes
To: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar
<mingo@redhat.com>, Borislav Petkov <bp@alien8.de>
Cc: maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT) <x86@kernel.org>,
LKML <linux-kernel@vger.kernel.org>, Peter Zijlstra
<peterz@infradead.org>, Josh Poimboeuf <jpoimboe@redhat.com>


Hello, can one of the x86 maintainers please pick up this series? Our
CI has been red *for days* now without it.

On Mon, Feb 17, 2020 at 7:42 PM Josh Poimboeuf <jpoimboe@redhat.com> wrote:
>
> Fix a couple of issues which were discovered after clang CI was broken
> by 644592d32837 ("objtool: Fail the kernel build on fatal errors").
>
> Josh Poimboeuf (2):
>   objtool: Fix clang switch table edge case
>   objtool: Improve call destination function detection
>
>  tools/objtool/check.c | 38 +++++++++++++++++++++++++++-----------
>  tools/objtool/elf.c   | 14 ++++++++++++--
>  tools/objtool/elf.h   |  1 +
>  3 files changed, 40 insertions(+), 13 deletions(-)
>
> --
> 2.21.1
>


--
Thanks,
~Nick Desaulniers


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnp6OaB7Gw9XX7WmJF3cVjanPPRO3SUYDc29X14SSDWTw%40mail.gmail.com.
