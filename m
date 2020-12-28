Return-Path: <clang-built-linux+bncBCAIHYNQQ4IRBR65VD7QKGQEGGRCQBI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x840.google.com (mail-qt1-x840.google.com [IPv6:2607:f8b0:4864:20::840])
	by mail.lfdr.de (Postfix) with ESMTPS id 416E02E6A62
	for <lists+clang-built-linux@lfdr.de>; Mon, 28 Dec 2020 20:15:21 +0100 (CET)
Received: by mail-qt1-x840.google.com with SMTP id b8sf5929149qtr.18
        for <lists+clang-built-linux@lfdr.de>; Mon, 28 Dec 2020 11:15:21 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609182919; cv=pass;
        d=google.com; s=arc-20160816;
        b=CG+lzJulgskmc0Df4HM0DlhW+/Ime5mxSCwTlqrgGGWA2lGN7WVzmk5Wv+IaJcyw9G
         vlO7hOwH9t+EaljRmfvVU0C36xsLhW1OemFk1Vj9AfESw6UZGfKGMJwopyUUsBmfCgXf
         Wu0M3MWfGocA9wKBi9C9Lgoyh849f/saPUuIc0AAykaUMtj0RfojTelUlj6Fqr8QY5Cg
         EwMYCsJ82BrfUUleN6dypiTZpr6UagklyAWFGklCIJOOrF1CSLmfv4Yfo5chpiP9ZyZg
         +AF1FSR+jeZeNNOz6AGbUoQZw1CFqTB4+CHXER9WBwWCVuiI8eNjxHMVWJv81y5MMeoo
         7iBg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=tqn8/5awV/7beWawp3ZqR7wmIEVQD+0ePeeMmPEo9AA=;
        b=h7rfAPAiFeEH6IyRH+/Hsjj9g+tQASObXVABpULA7TulxfGB4QVTI0yLbCEzj5QpoG
         3fAOk0slZuuglyiKrkld4g7Z0Xws472iX+Kq0RJOuo7Ets/tMbldnUbQgrB+CtAhtlky
         ugPI5r3PLZxme3eCH2alSX+6rV3USMnRXdgWhfvWodMImbRz7NNxoCQZjiRV2A41Yi+M
         SSV3DEpcU1SD0+2AMExjxUZRZZ1t9q+eb3GjtNrIOGkinQ9xCf8Os62V9Bwn84A5jVhX
         7Fmdoflhsk88uv+cNunQGCRyti5s3hYvPGja1Cj0P+D0KLod7//GAbINQBOnGUyrdcs+
         9i6g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=mwWB2wmA;
       spf=pass (google.com: domain of seanjc@google.com designates 2607:f8b0:4864:20::529 as permitted sender) smtp.mailfrom=seanjc@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=tqn8/5awV/7beWawp3ZqR7wmIEVQD+0ePeeMmPEo9AA=;
        b=rLcAWuuvsN1Ljh/qy/h4yzH5/woPu62NFH5gtFHhIBlpFP6niPztnOUXGiAZqOoP8K
         I5vrX/gAR1TgKTgp2PLl9Ow7eYp6DAEc18dGOKiZ6yqIxDHTtW++ChioiVrLliZkMwMt
         Rn6P0hYSCplxW5FnRgjub+Gv94fUs/RQsFfJBZgDNvdeEVPj+sRi1RDSkq7vhoYxLOZY
         nvWV5H4HS6qtVVC66o+flKiM8gpk4M/GbcWTarOyvPd9pZ85n+D95c5/MXD3bSrZ+x3Q
         0CCgJDFrgAV2NkFpJkrce/UnNVJsDIW+JxgsekUX4bCSsydCNMh3iuVbh3+MpyNSsBXV
         xIQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tqn8/5awV/7beWawp3ZqR7wmIEVQD+0ePeeMmPEo9AA=;
        b=U9DaH8FEybm2p+YaIzuMFjZf8n1N9KbxqbY49N6ZxlQBk8zzU7I6tHGjTfhQ3Ld0uc
         QvYeidlpK3/J3I1VtjGzm5I+ZMv3om0Yb7wJqCxeY25oLagkjLo0XK0ShpCZUyKW1ucs
         bjwfFSnembzBZyhmWtjoL1LTBdvOG4fDPdiezx0bypjN9AS8YQsuMHabJACrxl3Ayfnj
         dJ2FFkIrpPcCLdoYzhCEZBZEfRECDnnXSEuPuQOVS13k6Ulbx6oaKiE4KyAyC6qGp+Gl
         xcVy87BFnLLWCeUeH+UpSgltcGHIU9KYCMNVhTHrP7V+Cs0AaOx88R+lLAxcJ9MDTXgf
         gF8A==
X-Gm-Message-State: AOAM531+g39o7uV/622fvYq9c3hc9GVch4cQI7eL6usEeygleHpi4+Bt
	6ci+MYyXw3rKIS6lJ+h9LR4=
X-Google-Smtp-Source: ABdhPJxmRjwJewlfavKJMTq5hjnGcEyf5+efCA7DUsapKvSzwhypH3xiulVGBmz+LHvJRRSNvUKyrg==
X-Received: by 2002:ad4:57ab:: with SMTP id g11mr48748986qvx.38.1609182919709;
        Mon, 28 Dec 2020 11:15:19 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:34ca:: with SMTP id x10ls22240935qtb.1.gmail; Mon, 28
 Dec 2020 11:15:19 -0800 (PST)
X-Received: by 2002:ac8:7382:: with SMTP id t2mr45257261qtp.261.1609182919329;
        Mon, 28 Dec 2020 11:15:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609182919; cv=none;
        d=google.com; s=arc-20160816;
        b=YZYJYWQuP/8QcfGQ70w4X2Q8QIHQS3IqjtxuJEsEBWty6zMbQ8FSs6AYcanrZIvoCf
         8nFuY0W/dz3X5N/7C0RRYlhUbPCNnqba64df7arWUpTLdjYmIBb8Z/7r6OTPOVMowqJA
         ArW0aM+wIV28wAEdyMEC9ToxhK4SIcimsIjNEuli//OycvOJaa45mbqied+/KICpmgW1
         jE9dCobXHLCsslpAwr+9+L36pyzqMmo7BpcI7vCf+2PYHvZ2pUS6KDLEVEnFU+r+j86Y
         iR8Qz/tV1mQ7ttLkOolrEkr1U93WhnXMWitQYTNLb4XH6xrUqa/z4f+PKTpdIqYWGkzM
         c38g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=dHeCf8u1kCKbyNn5Y3Ab2K3Prk73t7dYCKJ4U5bk5mY=;
        b=O7Aa5gH+blYsQ4dP8WvjmDQ+KXMu60pdfojxvTIHmOmaQGGQN/CYQ2+brMqkiROumb
         lA7fe5MoBrWIhndng3jXYKpTg9uGIYZVfsn0Ot5sqIMCmiR3IfwNtFo/WpDk98vSQpk+
         1HNCAYDUAm6+pHtPhLimauxlwolWsS/6+/1mSUsRd8TghQyR/+vDeWbINmQTQogxpUX8
         cAMUvHEyRCj18efErjOsvgtyEgrWeFm8yFjKPGktScDzPMZ1eba0qIzjwTZrIPeUgXGf
         2aBxzSQaz4YCufgZZ7qt6L0et10yMU8GD1DtfstIVYZLr0XEuSGg5y0xiWKMFFv9mzjv
         ir2w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=mwWB2wmA;
       spf=pass (google.com: domain of seanjc@google.com designates 2607:f8b0:4864:20::529 as permitted sender) smtp.mailfrom=seanjc@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x529.google.com (mail-pg1-x529.google.com. [2607:f8b0:4864:20::529])
        by gmr-mx.google.com with ESMTPS id f21si3131012qtx.5.2020.12.28.11.15.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Dec 2020 11:15:19 -0800 (PST)
Received-SPF: pass (google.com: domain of seanjc@google.com designates 2607:f8b0:4864:20::529 as permitted sender) client-ip=2607:f8b0:4864:20::529;
Received: by mail-pg1-x529.google.com with SMTP id p18so7805133pgm.11
        for <clang-built-linux@googlegroups.com>; Mon, 28 Dec 2020 11:15:19 -0800 (PST)
X-Received: by 2002:a63:6e45:: with SMTP id j66mr45424795pgc.238.1609182918866;
        Mon, 28 Dec 2020 11:15:18 -0800 (PST)
Received: from google.com ([2620:15c:f:10:1ea0:b8ff:fe73:50f5])
        by smtp.gmail.com with ESMTPSA id f7sm171551pjs.25.2020.12.28.11.15.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Dec 2020 11:15:18 -0800 (PST)
Date: Mon, 28 Dec 2020 11:15:11 -0800
From: "'Sean Christopherson' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Borislav Petkov <bp@alien8.de>
Cc: kernel test robot <lkp@intel.com>,
	Andy Lutomirski <luto@amacapital.net>,
	Masami Hiramatsu <mhiramat@kernel.org>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com, X86 ML <x86@kernel.org>,
	LKML <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v1 11/19] x86/sev-es: Convert to insn_decode()
Message-ID: <X+ouv0PN6dmva92i@google.com>
References: <20201223174233.28638-12-bp@alien8.de>
 <202012251838.G6eufP3Q-lkp@intel.com>
 <20201225123334.GA5874@zn.tnic>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201225123334.GA5874@zn.tnic>
X-Original-Sender: seanjc@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=mwWB2wmA;       spf=pass
 (google.com: domain of seanjc@google.com designates 2607:f8b0:4864:20::529 as
 permitted sender) smtp.mailfrom=seanjc@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sean Christopherson <seanjc@google.com>
Reply-To: Sean Christopherson <seanjc@google.com>
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

On Fri, Dec 25, 2020, Borislav Petkov wrote:
> On Fri, Dec 25, 2020 at 06:50:33PM +0800, kernel test robot wrote:
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kernel test robot <lkp@intel.com>
> > 
> > All warnings (new ones prefixed by >>):
> > 
> > >> arch/x86/kernel/sev-es.c:258:7: warning: variable 'ret' is used uninitialized whenever 'if' condition is false [-Wsometimes-uninitialized]
> >                    if (!insn_decode_regs(&ctxt->insn, ctxt->regs, buffer, res))
> >                        ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> 
> Yeah, good catch, thanks for reporting.
> 
> Frankly, the readability and "extensiblity" of that function can be
> improved by splitting the two cases (diff ontop):

Alternatively, could the kernel case use insn_decode_regs()?  If
vc_fetch_insn_kernel() were also modified to mirror insn_fetch_from_user(), the
two code paths could be unified except for the the fetch and the PFEC.  E.g.

static int vc_fetch_insn_kernel(struct es_em_ctxt *ctxt,
				unsigned char *buffer)
{
	if (copy_from_kernel_nofault(buffer, (unsigned char *)ctxt->regs->ip, MAX_INSN_SIZE))
		return 0;

	return MAX_INSN_SIZE;
}

static enum es_result vc_decode_insn(struct es_em_ctxt *ctxt)
{
	char buffer[MAX_INSN_SIZE];
	int nbytes;

	if (user_mode(ctxt->regs))
		nbytes = insn_fetch_from_user(ctxt->regs, buffer);
	else
		nbytes = vc_fetch_insn_kernel(ctxt, buffer);

	if (!nbytes) {
		ctxt->fi.vector     = X86_TRAP_PF;
		ctxt->fi.error_code = X86_PF_INSTR;
		if (user_mode(ctxt->regs))
			ctxt->fi.error_code |= X86_PF_USER;
		ctxt->fi.cr2        = ctxt->regs->ip;
		return ES_EXCEPTION;
	}

	if (!insn_decode_regs(&ctxt->insn, ctxt->regs, buffer, nbytes))
		return ES_DECODE_FAILED;

	return ctxt->insn.immediate.got ? ES_OK : ES_DECODE_FAILED;
}

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/X%2Bouv0PN6dmva92i%40google.com.
