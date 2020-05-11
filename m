Return-Path: <clang-built-linux+bncBDYJPJO25UGBB7N2432QKGQELUUBC2Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63f.google.com (mail-pl1-x63f.google.com [IPv6:2607:f8b0:4864:20::63f])
	by mail.lfdr.de (Postfix) with ESMTPS id 18AD41CE2FB
	for <lists+clang-built-linux@lfdr.de>; Mon, 11 May 2020 20:46:23 +0200 (CEST)
Received: by mail-pl1-x63f.google.com with SMTP id m2sf8089075plt.17
        for <lists+clang-built-linux@lfdr.de>; Mon, 11 May 2020 11:46:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589222781; cv=pass;
        d=google.com; s=arc-20160816;
        b=WF/DXq6bOwLh4Sp9LSKtvPBLdXxAxrjZ4t/ksphHL/XIGpsdSG135NurUjJkGutPj8
         vNsbijOUhpnpihw5nV8n2+x5nE+fJkqWZLyM/1sg8IhRbUmIVd+Ietb3BFR0fvHSB6IB
         qHTlnTMgrmjTgO4KtCqwQBsFa0Z8idOkr5uvL5ZKGzGwSlbWcwvu2H+n1UFJlrHaEANk
         hdl6rAX+6L9gooIOkVbY0b2QtORIuykbC+legq5Gvc/KlaqFTca1Ga6Vx+YmLQprBLdH
         FLs4m+ll0awHvlSjfdvVjP4N4X5zfKnFYfdjkiVOYet/FhdCwVAskmyAi32f9TVuMRCO
         JCBg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=21fAvnr/Ti4YL6iQQVT0OYEKyR0/ZBhyvc2GWttLWv8=;
        b=R12BUTi9qzq+KKF8Hd5VF3owvjsJ1KYpVxx4lnzgYkCWPyXCSMkdiEi98llfIWVv2v
         1dDSLiW+wNjB7gbOqYhBQnB3/nBF99ooQXZ5SMhfBKCAxAIQKEGl3cY80w3K2qGm+B32
         JzpZB1WOM3msBAiumQJZ4KfObVpyPLkEOxcgoT7dnlsVOsrUAVQWXEUJOKbfJbxIAVsh
         JHUyZae3NK8VXjFNt8v9gvFvGYMGySA8tolvWBoPF03NERGkao8ZS8PV97IrgNGGFp8i
         aTgz+FosHEDK76z1qv+G4c7n+K6BgEi4M4Qq/VHVx7avceTvrENmPicTJ7+gFFtkM/e+
         mQXw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=PC7MFSA9;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=21fAvnr/Ti4YL6iQQVT0OYEKyR0/ZBhyvc2GWttLWv8=;
        b=nH1ye9Hoef2rdQd2rMZnSY1QQH9KsS8k9x3IZ0cx+z/mKPrjn6C5KZg0PXCbNEXvtZ
         2aOEwkg5HZ1oRh8EalMdyR3cBQPnQAkG4YaLUDaDhKuX+SYUH3uEy+lwdplAgmyzJb+f
         4icCWwvKjO5lNvjtcyOqzz9Hm3+2S2UNaNjJq3PkTzH47Ic8hidd/SPTObrMfmcrBYld
         erLix52vwmWFuoURc0cUBx5AsZmTPOOMI39g6uEopoUG4Q03iYL5UsaNrgTEo0ItPdqA
         QdmFeOU+2uT0Br6dvYy1TSve7ST2FT3HOicqcs+GgQ2PCNb8B8PR3D4eOBut4cSLXCyj
         4JQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=21fAvnr/Ti4YL6iQQVT0OYEKyR0/ZBhyvc2GWttLWv8=;
        b=cWt3QAKdC4fqiPkM2QklQf1s/hm5IdGUdqja8QXjlwYYki6ZSJnSNHYFfJexyDdKor
         IF8leqL/oXFy7dnraVOb+sWORt7k2V6zjflchK27jrHV+pvLgadjcmO92MEcgtLHAfHx
         ekmnaUDG7cZ3dxQDT3p4ERtixWT4IOXs32nbeGI007q+OJeDf9RPk2Q3cCRP3Lz2sTAt
         o5Rumb5+RI7Pnv9s+E+vqzhoqmdl4tjqKKFuaovXcQnId0ZgqH393WJBlPl2H9FksvJ5
         fNxAwBIHDnoMdvbIC1TIQTjEofgLnBcC9uzu87i+bZDxZzFAr7MupTcahdIQ3YIwFzXf
         feVQ==
X-Gm-Message-State: AGi0PuZOL5iXAXpSLwcaE0E1PvgEB0pHEND/bczQ3mnAf53oOZYiwa1g
	XbDWcJWX/O+icAyppmcQXWU=
X-Google-Smtp-Source: APiQypLifr0j+8HDhdQhugRx/9HBp2j9JYEBURtBZdaEDUfg+skEnbeR/jo2+ip0BgVuMSoHHKUezw==
X-Received: by 2002:a17:90a:883:: with SMTP id v3mr23305938pjc.5.1589222781611;
        Mon, 11 May 2020 11:46:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:e116:: with SMTP id z22ls3805749pgh.9.gmail; Mon, 11 May
 2020 11:46:21 -0700 (PDT)
X-Received: by 2002:a63:c158:: with SMTP id p24mr7060507pgi.315.1589222781173;
        Mon, 11 May 2020 11:46:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589222781; cv=none;
        d=google.com; s=arc-20160816;
        b=EoEQRT7pJQS5A9udWI0iptCOhbtzRycNND1PAiq2WAA/lh/IJty4CAO3xNIIRYJvkY
         41NlupLZcR5J7Pe1rJXfyPwcL1u+O+1IMCgoi3NAYWVVCGtO6UMbvZkC9ddq9KKLfFF0
         MN2j1XlNLkZPhRpYFWFArEZeDMuw/7YulTMtPmuupyQ04d0JphFtyb1gbVks1vnKCerS
         lBffMfgkCCiQVWsMmIpK7pVRVRKdGFogKbHrM3ETtDY/BfG2cURLEg/LFV8lKSKRfdHN
         HywV0pLq7t+RnMy72GUaFTAr4b0lfPS1FufpRIXCbhvfsBaUNXFfr0gMWkW8nl5/eIvb
         x2gA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Nscz4Wn57pBdv+UExt3Kccfb3G9SWzhNWKswuT0pTxo=;
        b=gHaaKvx03RfNM6A5s6jKtW9w54Joq+UPADeqPUr7F+VhukcSot3NfBZjMuJGuZCxOZ
         1YHgVCI/IbC+EtOawZJrLx3/P6XpAVO9d2DtE70ykCEHTsBuMGFqr7+rrVU88qie6hKN
         GqkdU7hdd9i2+kZSR7nZesS0eFmkUIzv6PmliiJtQn4i2kvjWhL63FyL8d2/EZf3eEzA
         /C0mlXTH23LXNOw08A0TFGpy7CQlIjzLyZK0I1KC2UQk1CNNrOxawxJQW61vSLjuUBY2
         uBUdKuiXSlhBq7RaZWyccoETE5TQKay6uY/pmKk55l7oTW7UJ2yuQmGW75PKSEedA/jW
         Bbyg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=PC7MFSA9;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id g6si109878pjl.1.2020.05.11.11.46.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 May 2020 11:46:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id f6so4962402pgm.1
        for <clang-built-linux@googlegroups.com>; Mon, 11 May 2020 11:46:21 -0700 (PDT)
X-Received: by 2002:a65:5b84:: with SMTP id i4mr16509069pgr.263.1589222780548;
 Mon, 11 May 2020 11:46:20 -0700 (PDT)
MIME-Version: 1.0
References: <20200504230309.237398-1-ndesaulniers@google.com>
 <CAKwvOdmspKUknbzDn9kY2jMgkFw=Ktvst0ZtwambDOfybqJGWw@mail.gmail.com> <CAMzpN2iDottAY3p=GS0A_7XX7bpmWsmSOEcztMXNEEvcwHirjg@mail.gmail.com>
In-Reply-To: <CAMzpN2iDottAY3p=GS0A_7XX7bpmWsmSOEcztMXNEEvcwHirjg@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 11 May 2020 11:46:09 -0700
Message-ID: <CAKwvOdnxV_KwC-q73e3basJvo4-9FCGeMUOrZLj5xyt6Yyeh2A@mail.gmail.com>
Subject: Re: [PATCH] x86: support i386 with Clang
To: Brian Gerst <brgerst@gmail.com>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	David Woodhouse <dwmw2@infradead.org>, Arnd Bergmann <arnd@arndb.de>, 
	Linus Torvalds <torvalds@linux-foundation.org>, Dmitry Golovin <dima@golovin.in>, 
	Dennis Zhou <dennis@kernel.org>, Tejun Heo <tj@kernel.org>, Christoph Lameter <cl@linux.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>, Al Viro <viro@zeniv.linux.org.uk>, 
	Josh Poimboeuf <jpoimboe@redhat.com>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Peter Zijlstra <peterz@infradead.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=PC7MFSA9;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542
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

On Mon, May 11, 2020 at 11:09 AM Brian Gerst <brgerst@gmail.com> wrote:
> This looks like the same issue that we just discussed for bitops.h.
> Add the "b" operand size modifier to force it to use the 8-bit
> register names (and probably also needs the "w" modifier in the 16-bit
> case).

While it does feel familiar, it is slightly different.
https://godbolt.org/z/Rme4Zg
That case was both compilers validating the inline asm, yet generating
assembly that the assembler would choke on.  This case is validation
in the front end failing.

Side note: would you mind sending a review by tag for v5 of that patch
if you think it's good to go?  It does fix a regression I'd prefer
didn't ship in 5.7.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnxV_KwC-q73e3basJvo4-9FCGeMUOrZLj5xyt6Yyeh2A%40mail.gmail.com.
