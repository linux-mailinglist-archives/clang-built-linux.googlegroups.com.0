Return-Path: <clang-built-linux+bncBAABBSHNWXWQKGQE6MXMKQI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83f.google.com (mail-qt1-x83f.google.com [IPv6:2607:f8b0:4864:20::83f])
	by mail.lfdr.de (Postfix) with ESMTPS id E59F8DE77F
	for <lists+clang-built-linux@lfdr.de>; Mon, 21 Oct 2019 11:13:45 +0200 (CEST)
Received: by mail-qt1-x83f.google.com with SMTP id t25sf13502637qtq.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 21 Oct 2019 02:13:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571649225; cv=pass;
        d=google.com; s=arc-20160816;
        b=nDk710POiTPG/1G3hx/W1owTJjBzaNKFkrYQLHhbsUs9eEi8+f5hKMs4a8XG50XS/L
         R1prk6950EtufhF7vaJns11dgBHM8/jmpY/vxcttm0sbIHUQpa9bFhoDOhi3frBCsvmz
         mKIDzsp8aVBC6WVMNDcTcoLz79pyaGtGMOAAl1o0zSPbp7FRa67VTo0UZwdGjar1+tPG
         STbQDplQrb2GOUW8YgBBmrHzxualUIZhPLNDwVC8aF+4MeCBlykBjXNeVBRX1B5Gr5/B
         fkcNAN3RPEY7uZmkHmazvig2xNquC7rK+zo3GeoJNGJ1CzW793r+I6wB1ncwmES5wRMl
         TpQw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=y9xfzUZJz8jxCzd8l54b+HXXi96Id2hJ1bfH2EBV05U=;
        b=xSccyFNX1txjE0v7XE7A1Td/oX0aEkdQx5WTLC5F/Jo/YC6edoV1OYzf9Pr2b8vpEx
         npdccEMvUKw0vrkmclk88e+ut1/esr5wWSswYsubVIBX8KQfqs83csPZrkfUc6Lfr/2S
         ln0rf8KRR+MEAwlpH3wNlPbRgDkIip6JENp9jJmhe0rwBTK6K8P2/L8Ce50E5cR25um+
         IY/HJOVC85sBjlHsQ84+U/aL+dqZsSMEJLobTDUFz+4J7jgtqcE4weweGZRXJNJy1kyJ
         vue5trPDnyu0SIblYZX4JPLRpzL3/6JkuOgK2uIj28nkkk/twrJVN07Z5b6Ailj59Yaw
         dpwA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=dILlMHxs;
       spf=pass (google.com: domain of mhiramat@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=mhiramat@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=y9xfzUZJz8jxCzd8l54b+HXXi96Id2hJ1bfH2EBV05U=;
        b=RVYQlAyaSVuVtgIVQ+4YPN73a0GMONC/7eCwjTHa/ecR+pJgFaovXfmEiF7/bAMn2U
         tLx3xtfVimWL6NXY9E1pbkplRilpqTT6DJswn1rHwnsizsC+lFRIbQ3CmZaba+vFnwc3
         oc8i+2QjnUMBawk91FraH519YLDoDrcYVOYkg86AZvq4XDxbSenfaIPoFgRc3ICrDKNE
         k45sbzXI27w5HKSiW4dS26l0gt3QsjSrtKgdpBPQ0foMMz1fUItbUwCclQTIPTceNg6C
         Kvopd6Xq1Z3F4tKN+qSs3Q5agSFWQ0N4FMkAKB5IX7ru+s0mIuYTMNPcEn6uNE/tfTis
         LITw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=y9xfzUZJz8jxCzd8l54b+HXXi96Id2hJ1bfH2EBV05U=;
        b=flWt2lNHxnIMTY3G/eumutn23OcFX69eCHi2jUZKXvHgCfouvmrNr+l/d+AKR1BMzH
         mbu5xohLnkzWfmjrvW5HiT11+Gl+lRQf/x0cAT8PHzSiP1hYz9HLiisga6IPcGP8h3JZ
         id6xeD0rPrj7VIfrehJM1vi+Ns2Hfmx1a1w42FtXoxysno0xtzalimiz/ImeijwCFIZ2
         hWpCtgXB9uIrysat0wW+drNavILjYOFEKbYvp2mze6HioDNON5eWhpFXbzSNsD/cjJPM
         Gpyh39qB2acZfLS9fqmxQBwXFCI3IlmiiWGqdw29inr/qqK+zlAlWvBCOiWuQClaHV3t
         EwWA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAU7HeXa57V6jLEISuzDlGsH4N+WOiB5V4224WdK0Sj7QOq9SaRI
	wRJ0BZ78N3C6zWfrd1atrX0=
X-Google-Smtp-Source: APXvYqyPUTd3CZNNtzm6Eca8KWIPCMnPMxJw6Q87U+cJQOtY3So6A6H8VgNdPEjH2yTI07sSMC5+fg==
X-Received: by 2002:a0c:ecc5:: with SMTP id o5mr22954184qvq.19.1571649224934;
        Mon, 21 Oct 2019 02:13:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:2e06:: with SMTP id u6ls1158230qkh.5.gmail; Mon, 21 Oct
 2019 02:13:44 -0700 (PDT)
X-Received: by 2002:a37:4c13:: with SMTP id z19mr22223107qka.449.1571649224473;
        Mon, 21 Oct 2019 02:13:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571649224; cv=none;
        d=google.com; s=arc-20160816;
        b=UYxbJmYtg8V8tgwghh2BDhHeDDkXuhiIgP/V90Ms2pQb666hsEQJphAsiVtjBusj+s
         r6tE2rLt7JgsO02USLmUKHcGSIR/j9lvqFpQG4MYesKXXk5gncMBbP9dqZUd8DMX32OE
         taxeObEOvv8/0+tJE+SkRYMrKdyO/XA+ODBKngWXhE6IAcxVN095tmU36SaBWfhcQrKd
         odF6/xGS15obgOkEJX5oCddAPr5K4g8VaGlRc+bw9IWOHkQH/EaZUMLo30ICLMrw3Iuf
         1KxqoiGR3yehydFfyayqnsKIz5DOdLzIbBVohuqmmtFuIoLAp4+gSTG2L5MQhRZ3fTr4
         vsjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=I9syePCdqy2s1RNRVlrd5LqEHLV1JDCugJ0MObESIDE=;
        b=r72RFzonHqfwQfufQvK9H4cMvAmpU8zhWRRftNp0CMwaqsmDENNdFsedclSOWNvXFk
         ikR0WjgPwLHRaooSenLyKsS5csiPTb2LwNGApwLHlGqnvuYeXs+9PonLN1j3hW8nL11j
         4R7MnzKCExcdgc9DnfaWaD+vUoO8Maq23PhvRBv5q/l0kEeGCLa2AlsT1TpE1O5uWFMh
         cdTBsSnWklw9c8H7RFlCbmbovWBkLmM+EB6v9fd59uskAYpbG0+sIxKZ+MHIIjgjl+0t
         rpCJorwRlEi0NFVH1S67Xv4EoT7KeQc6xTfkSfu//RN6Fc6uIlLTEZDjOHAZm53WTgBW
         9wzg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=dILlMHxs;
       spf=pass (google.com: domain of mhiramat@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=mhiramat@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 129si503770qki.1.2019.10.21.02.13.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 21 Oct 2019 02:13:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of mhiramat@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from devnote2 (NE2965lan1.rev.em-net.ne.jp [210.141.244.193])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id EEF1320873;
	Mon, 21 Oct 2019 09:13:39 +0000 (UTC)
Date: Mon, 21 Oct 2019 18:13:37 +0900
From: Masami Hiramatsu <mhiramat@kernel.org>
To: Steven Rostedt <rostedt@goodmis.org>
Cc: Sami Tolvanen <samitolvanen@google.com>, Will Deacon <will@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Ard Biesheuvel
 <ard.biesheuvel@linaro.org>, Dave Martin <Dave.Martin@arm.com>, Kees Cook
 <keescook@chromium.org>, Laura Abbott <labbott@redhat.com>, Mark Rutland
 <mark.rutland@arm.com>, Nick Desaulniers <ndesaulniers@google.com>,
 clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, Masami
 Hiramatsu <mhiramat@kernel.org>
Subject: Re: [PATCH 10/18] kprobes: fix compilation without
 CONFIG_KRETPROBES
Message-Id: <20191021181337.a1f886fa62b400023c576be0@kernel.org>
In-Reply-To: <20191018130257.3376e397@gandalf.local.home>
References: <20191018161033.261971-1-samitolvanen@google.com>
	<20191018161033.261971-11-samitolvanen@google.com>
	<20191018130257.3376e397@gandalf.local.home>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: mhiramat@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=dILlMHxs;       spf=pass
 (google.com: domain of mhiramat@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=mhiramat@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Fri, 18 Oct 2019 13:02:57 -0400
Steven Rostedt <rostedt@goodmis.org> wrote:

> 
> Added Masami who's the maintainer of kprobes.
> 
> -- Steve
> 
> 
> On Fri, 18 Oct 2019 09:10:25 -0700
> Sami Tolvanen <samitolvanen@google.com> wrote:
> 
> > kprobe_on_func_entry and arch_kprobe_on_func_entry need to be available
> > even if CONFIG_KRETPROBES is not selected.

Good catch! Since nowadays all arch supports kretprobes, I've missed to
test it.

Acked-by: Masami Hiramatsu <mhiramat@kernel.org>

Thank you,

> > 
> > Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> > ---
> >  kernel/kprobes.c | 38 +++++++++++++++++++-------------------
> >  1 file changed, 19 insertions(+), 19 deletions(-)
> > 
> > diff --git a/kernel/kprobes.c b/kernel/kprobes.c
> > index 53534aa258a6..b5e20a4669b8 100644
> > --- a/kernel/kprobes.c
> > +++ b/kernel/kprobes.c
> > @@ -1829,6 +1829,25 @@ unsigned long __weak arch_deref_entry_point(void *entry)
> >  	return (unsigned long)entry;
> >  }
> >  
> > +bool __weak arch_kprobe_on_func_entry(unsigned long offset)
> > +{
> > +	return !offset;
> > +}
> > +
> > +bool kprobe_on_func_entry(kprobe_opcode_t *addr, const char *sym, unsigned long offset)
> > +{
> > +	kprobe_opcode_t *kp_addr = _kprobe_addr(addr, sym, offset);
> > +
> > +	if (IS_ERR(kp_addr))
> > +		return false;
> > +
> > +	if (!kallsyms_lookup_size_offset((unsigned long)kp_addr, NULL, &offset) ||
> > +						!arch_kprobe_on_func_entry(offset))
> > +		return false;
> > +
> > +	return true;
> > +}
> > +
> >  #ifdef CONFIG_KRETPROBES
> >  /*
> >   * This kprobe pre_handler is registered with every kretprobe. When probe
> > @@ -1885,25 +1904,6 @@ static int pre_handler_kretprobe(struct kprobe *p, struct pt_regs *regs)
> >  }
> >  NOKPROBE_SYMBOL(pre_handler_kretprobe);
> >  
> > -bool __weak arch_kprobe_on_func_entry(unsigned long offset)
> > -{
> > -	return !offset;
> > -}
> > -
> > -bool kprobe_on_func_entry(kprobe_opcode_t *addr, const char *sym, unsigned long offset)
> > -{
> > -	kprobe_opcode_t *kp_addr = _kprobe_addr(addr, sym, offset);
> > -
> > -	if (IS_ERR(kp_addr))
> > -		return false;
> > -
> > -	if (!kallsyms_lookup_size_offset((unsigned long)kp_addr, NULL, &offset) ||
> > -						!arch_kprobe_on_func_entry(offset))
> > -		return false;
> > -
> > -	return true;
> > -}
> > -
> >  int register_kretprobe(struct kretprobe *rp)
> >  {
> >  	int ret = 0;
> 


-- 
Masami Hiramatsu <mhiramat@kernel.org>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191021181337.a1f886fa62b400023c576be0%40kernel.org.
