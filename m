Return-Path: <clang-built-linux+bncBC3ZPIWN3EFBBT5W432QKGQEW42TBUA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43e.google.com (mail-wr1-x43e.google.com [IPv6:2a00:1450:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D8051CE2E4
	for <lists+clang-built-linux@lfdr.de>; Mon, 11 May 2020 20:37:03 +0200 (CEST)
Received: by mail-wr1-x43e.google.com with SMTP id p2sf3742504wrm.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 11 May 2020 11:37:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589222223; cv=pass;
        d=google.com; s=arc-20160816;
        b=QlTBsOHCFFXSXIShQwU62VlhcrVGuDhYslByaaxtZwjJ5ZipCE1lLJrpPecU5t43Kx
         q1DdM12RNZ+L9KGEQf9zSfTZj3sbtvS89OSaA1LOJ3Ed/Jl4DOSuMrljUWd6vey1eHRE
         BL00nVkHccuZOJ+QbI6XdY2ZIFTf+edgmEGEdq4NvhxTZ/5qmvzKzmkiAI/MBJXrzvI0
         tN/1OYrruLbh7+pNbMguO6UlXO6XrUrnNKdwZpiU82uw8Gg4KR9s2cgAr9417Ea5Le24
         IFlIn/hZjBKBlE3TChmdLLKMYEJbrhLeZc60vQbJQ4LL2VzKPMvABdiG/g178IIMF1/W
         eeiw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=av+HyVULjdfA21gBCHE+Gdm7cBndxyelsCR4Szslcf0=;
        b=A1g/zrO1thN9FnaP+2E0RNb7wBbwK+FMPJyS4lho72fX/S4GdNS1cvqDOoqyu/jgLA
         Svob2LRzQ4QNAj3vbP1HK0YjFZbkETYMqpeu3auoSd4uBOX3ASTS9spfZbuh5iGgbmA7
         buYqOOd9V6Yn7jq1oszDPcte096zeP24JxSmv+24ceYUB/W2FERsoSkrA7vzEwrW4fzG
         NoEJ0Ebvuf40+Lmc8DZm7KkdkQl9MsLpjEL4gCoCY8e5zSfBqCfZdx+L7ahcaCs1hs+3
         e64qPmiyd49BZFZ6KlysWLfAiria1YYz4QV4y4geAO7ZHx1I6qrovm50SBY5JV8/HZnt
         ds1w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=FzSncrNX;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=av+HyVULjdfA21gBCHE+Gdm7cBndxyelsCR4Szslcf0=;
        b=gW6FipoygrpbyxGLAZlxnAhrfkKZDOk4LzdbDV2Vaxdl9DQGvrbjVx6iRYtBrUoN89
         vp07f5Iy6xRZbnfFAlgBPm30sKVvvA1CsNYtmpohAtRXJAdteTnSzEDvBCCL7AGiRSqy
         X6yAUYJ8djUrlVagWSiwRCrQu+w9/j9gcwq41mmgLZN50D+4fqm+FCX5ICI4QqY77r5S
         HyhYx/bSBWwguTwQOlhGXhutf53XmzxYU4viIuVA+zwQSjpQxs3zjFmX7dS8f4LwPGBg
         l7Re4Hpf9VwCjunmcr7RHXnvxZ0bbBLwyE2QtPa9MTcvFQcrl++20YNSsyDw9pO9WXHO
         piBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=av+HyVULjdfA21gBCHE+Gdm7cBndxyelsCR4Szslcf0=;
        b=KuLh5aEWTnxLTweEPC5DiQPZPQnosGXRQRJ/hR7XREOJIiA9o1N9FqfYteUsHSwOxP
         OoWPW+ZMhmXT58bA4uxcgWbWi0fzGqr20xYdwdnmpAZlJkCdd6Ly7jVF21TXl6/8MfH0
         CBYTWtVKtPKjG2vjoaA4097VTi2e/HlvB7L2VV8nOlUT/vqTGngNUCklus4nd4w48MVr
         mnnNylwrb9mIpOR2Wqt5WKuqhWmfSqXyW8UzQDYDSVfat0xGTpVuVo50ZLHZnBZIJ4J3
         DNcTO3usgONbGWWQd+LS3CAB/4ZeMbB3SIyAdAxWapGUiR5mGX0KsTZGAX+XpK8LJwWr
         4GQQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuY5RPC1Cr+Eioe7NTpCDpDHHk5NxwyXFB+3WvY7Rm/OdHoPyF6k
	rt+/4iW7PvZjSRj8IYRPxWI=
X-Google-Smtp-Source: APiQypJqz5QthX0ciN10Lj4mRVbAobVItr4JIw/Rpf2jMYUSJD9cRustt6XJ2EloIb9p9i/Zp7+OPA==
X-Received: by 2002:adf:e28c:: with SMTP id v12mr22495568wri.157.1589222223308;
        Mon, 11 May 2020 11:37:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:5224:: with SMTP id i4ls1556160wra.0.gmail; Mon, 11 May
 2020 11:37:02 -0700 (PDT)
X-Received: by 2002:adf:dd50:: with SMTP id u16mr21912158wrm.58.1589222222699;
        Mon, 11 May 2020 11:37:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589222222; cv=none;
        d=google.com; s=arc-20160816;
        b=AGwvP/2fXVzaJXH/D4s35s/c8ftqZFtxryORuecSsqJm73L7JZ5ZhWW/WKNomviVlI
         50eYslfY1R4Jxv7irTgNQkoPmUlHk9tIdw+HGW3rdYeZkmD1Iu1EhwZp3uF1kVW45uA1
         qWn8KZ52y+yEOL0hRDWipXJerFT++fXMylIuZj7e/LPd6nC8BuaRG55a3uHyVL5TTIJn
         7qtrADhwHsLzxC6h4xk0zmGLPutFMHBZ++xb57fLNJWbNQC++2ffjZbU38hpTMomxyVe
         AH5cZJ4iESo+kQjV6geNdix8cv00GDiq6S+CpExFnioxrjaOMNPf5IGqIdT/6jz29/+9
         VsFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=TcSOOR6oXnrgDwVzHY9DAIp9Hsd3wV34tn9evP5v+z4=;
        b=j/Jowne/ktKMgfGs9nxPZ22OXkHYDURnloQsVlQK9oTJh3wyI5MtU27sv4kBTCV9j8
         fgNFGYzQY/J0Y2zrSPdmiZOzLP84t3lSfDRLc1IMMlVLxdZq3Q3fIV/lGzY4bg6yS4hw
         //VNgYDxNF+bO7jdt9WRQ7pkAPCHddm+MGh00HSXz4I/RAlmzKj7N1xAZUlrHBC7FrMu
         vZbJktIEfrH/R3Vx+jPIkOZ98xZn9LdSH36/sbJmQWOAW0suELSUNyzyL3DUrujV/2t0
         z9FjC0Ql2m4PQzmsNWRGEO/Dk28RThxXXcBfO6gmxKDR7NLyr7Djf43Nz6W7xFQUbyzN
         Xjyg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=FzSncrNX;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
Received: from mail-lj1-x244.google.com (mail-lj1-x244.google.com. [2a00:1450:4864:20::244])
        by gmr-mx.google.com with ESMTPS id u16si1092658wmd.2.2020.05.11.11.37.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 May 2020 11:37:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::244 as permitted sender) client-ip=2a00:1450:4864:20::244;
Received: by mail-lj1-x244.google.com with SMTP id d21so2991707ljg.9
        for <clang-built-linux@googlegroups.com>; Mon, 11 May 2020 11:37:02 -0700 (PDT)
X-Received: by 2002:a2e:9bcf:: with SMTP id w15mr8028034ljj.26.1589222221654;
        Mon, 11 May 2020 11:37:01 -0700 (PDT)
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com. [209.85.208.170])
        by smtp.gmail.com with ESMTPSA id a10sm10470333ljp.16.2020.05.11.11.37.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 May 2020 11:37:00 -0700 (PDT)
Received: by mail-lj1-f170.google.com with SMTP id f18so10655322lja.13
        for <clang-built-linux@googlegroups.com>; Mon, 11 May 2020 11:37:00 -0700 (PDT)
X-Received: by 2002:a2e:814e:: with SMTP id t14mr11004422ljg.204.1589222219867;
 Mon, 11 May 2020 11:36:59 -0700 (PDT)
MIME-Version: 1.0
References: <20200504230309.237398-1-ndesaulniers@google.com>
 <CAKwvOdmspKUknbzDn9kY2jMgkFw=Ktvst0ZtwambDOfybqJGWw@mail.gmail.com>
 <CAHk-=wif=_ZomkWJAmQRCUAMHQ72V3NEQ-OteiPE56K7KoSjbQ@mail.gmail.com> <CAHk-=whhCBvjXtRiFM2JEZ4XyBmuPprvdo5tpPVBqUhkRszxiQ@mail.gmail.com>
In-Reply-To: <CAHk-=whhCBvjXtRiFM2JEZ4XyBmuPprvdo5tpPVBqUhkRszxiQ@mail.gmail.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Mon, 11 May 2020 11:36:43 -0700
X-Gmail-Original-Message-ID: <CAHk-=whkz12DeKOt3iw19Ey=c5HkXH+4disNJ3DwZuSDr-Tt5w@mail.gmail.com>
Message-ID: <CAHk-=whkz12DeKOt3iw19Ey=c5HkXH+4disNJ3DwZuSDr-Tt5w@mail.gmail.com>
Subject: Re: [PATCH] x86: support i386 with Clang
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	David Woodhouse <dwmw2@infradead.org>, Arnd Bergmann <arnd@arndb.de>, Dmitry Golovin <dima@golovin.in>, 
	Dennis Zhou <dennis@kernel.org>, Tejun Heo <tj@kernel.org>, Christoph Lameter <cl@linux.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>, Al Viro <viro@zeniv.linux.org.uk>, 
	Josh Poimboeuf <jpoimboe@redhat.com>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Peter Zijlstra <peterz@infradead.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: torvalds@linux-foundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linux-foundation.org header.s=google header.b=FzSncrNX;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates
 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
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

On Mon, May 11, 2020 at 11:24 AM Linus Torvalds
<torvalds@linux-foundation.org> wrote:
>
> I guess I should just test it, since I have that clang tree.

No, clang doesn't seem to handle it even with __builtin_choose_expr(),
and has that

     invalid input size for constraint 'qi'

even when it's in a side that is never chosen.

Very annoying. A lot of our magic macros are literally about "pick one
case when the others are not valid for this type".

             Linus

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHk-%3Dwhkz12DeKOt3iw19Ey%3Dc5HkXH%2B4disNJ3DwZuSDr-Tt5w%40mail.gmail.com.
