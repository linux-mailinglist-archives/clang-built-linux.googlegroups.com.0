Return-Path: <clang-built-linux+bncBCAIHYNQQ4IRBUEDVCAAMGQEMYOWIIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93e.google.com (mail-ua1-x93e.google.com [IPv6:2607:f8b0:4864:20::93e])
	by mail.lfdr.de (Postfix) with ESMTPS id 55ECE2FF804
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 23:36:01 +0100 (CET)
Received: by mail-ua1-x93e.google.com with SMTP id c46sf1240273uad.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 14:36:01 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611268560; cv=pass;
        d=google.com; s=arc-20160816;
        b=Mm2So1sSVL/WbD63zwed7oTykGr0AoaLo89PW+3ZPCoYbdhmdb4E70Scig9Bm66/Nc
         78bN4zCRgyRhBbUQiSAGJfMlQzWe8w6tZOlpNdXs8N7Cm/C8VEHbjFuajcdpGK3A38K5
         ymcROwPzfKK90bN5kPwvGC6cXAUMcaIA9CYLB52shlbfZbUhFnIe7p7RYbd4UtcJb9sH
         elm72oPilU0ccZJxTsu7VjKQ0CEvxHZkiu8bVNgPFcJTl/LUlpEDPI5qpyrJDvNi5F7t
         6KIdEek27GpqZ++fXJE+j7TahJNCDK0A9CTLuI3hQ9rEAoQJnbIpM3uM7cC2djM/m4H7
         K9pg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=Z+lT5hAlV7dkhx1hyIE/8vHsmKW69YVQVMuLl6b10RY=;
        b=kvzT5W+Tl0+8R5kqkkaqf8jVl2jnh0hWw5fkWW75yqv7ckDzl8pBU3QQPRK5IML0pQ
         HwwtFVyV/GJynjZwpSHaWJcg7Hu4bKPcrsAiDFYXSAeXeBMRlFOa2V+QD7K01eQ65GFn
         lbT/BhP0tMVCkdlCItY2SuI/7RhbleTX5M1rB7AjlV/G99a1XIHDWfT5pOAV8iJdn9/v
         iNlvAS/uiPdrX7uJqQlWByHu7U+CADTZH+7ZMwRdQ5s62BXM1mjvWIsstInQe/hL4S+Y
         EVcYRis7thvx5nPehanj+3tsSW7W1yZ28Hj8LZGi58ng4vqG1Biysbi+sz0XX5oOivmU
         wfPw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Om26hhxJ;
       spf=pass (google.com: domain of seanjc@google.com designates 2607:f8b0:4864:20::632 as permitted sender) smtp.mailfrom=seanjc@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=Z+lT5hAlV7dkhx1hyIE/8vHsmKW69YVQVMuLl6b10RY=;
        b=dHPLAFv4mYgJVPiKZlRTJD/cZ6/prrtn6n/ix9Pk9c3Vrm3fe2mtPB6cK9s1fxD6VP
         XZdizBBQwmz55vITlKZue1APfDqaCoG3cDmyhU9D3ew9DxZC+M13j4FujnPiFKTjzgWQ
         tP9F53SzSGaixTFuUJ8VlyFWSMuDv/gyr3m5iPGaIh3kMdf/qlRrdes2hOnuRc19/8EE
         qmL6ZM6vqcAuthgO1DWDHM+CTVpzteu0BvedS/R0liFSo4+wgqT/239E1LS53n1VDR+4
         0Dsiri9OYEhWGresyBqszyaGDIwJ+1vfFyqb6fLEe+iDesHuJkyCxToydERFLEUZa1Yw
         wRKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Z+lT5hAlV7dkhx1hyIE/8vHsmKW69YVQVMuLl6b10RY=;
        b=AUKKkz690s03LoaRDKwyxrBn6pTkdSWhkDcSf3QFe14V/oUzOwUg5C/H72BHLXlXQk
         BB3LvdSJoWgOAcvVTlgzcCrXgWWAzD5mpbRaq6T+mzUuWbFJz1z/abiRL0qX/4xEohWA
         rUZF1tbw9LxAiMNWbKVomjhoD6OzlA9jIo5UgstgFSUmvHfHzAYv4ggS3COZQlwZpV9y
         u5BllG/EWHwx2BUHxkCBEV/QXuBnzXSYl7eaU2hyEpiNjQKPdids1zi2qgRY5hiBMbo8
         BYijP3UwKmB3phgXwN10nfIob7ySGy0QLlCW8dzvouGWY388850nTMqlL7tKEgGS6IHf
         I2pg==
X-Gm-Message-State: AOAM530NmNKxvUssWzAtTB/AcpHoe63P4PWjJmaz8Cdi40bLReufs681
	vLn7FxBQqJmBPw/AyXnT1Bo=
X-Google-Smtp-Source: ABdhPJzcneQqtDLlliLT3KIhfwmmNdaLxZ+BwlyeNXUevx5bmkHdxt96fN5cA9PoOX+rQfn2b2hStQ==
X-Received: by 2002:a05:6102:34f:: with SMTP id e15mr1468238vsa.21.1611268560402;
        Thu, 21 Jan 2021 14:36:00 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac5:c902:: with SMTP id t2ls233384vkl.11.gmail; Thu, 21 Jan
 2021 14:36:00 -0800 (PST)
X-Received: by 2002:a1f:9816:: with SMTP id a22mr1410246vke.23.1611268560003;
        Thu, 21 Jan 2021 14:36:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611268560; cv=none;
        d=google.com; s=arc-20160816;
        b=iiYTH6ju/hBxM0VQMtUNd5p6emEyuLmiv7s43PtgOTjdHN/ELvCkVmlVIomzoxyMaS
         dcv6YB1aDuqETACC9nQHXOHFseHoLlss3BYPceyEtqYvYvctkdMD+PtGDwKS1/E+3DdM
         jybHV/ijscXfHUxxHt1CjFGppaYtLVi5wTgmMqFDe157zFKzes5hea/lyM7dNVFeYdEh
         VtoYDrAzuroyhtEkVl8ggdSN8bO79uLr66CMcUXWSME3tBGbXKLkOlXOovWuLbq+hMD5
         wBp/6dIi4Wq4x9GKgPyDHWSk1iWfl5NxJQhDxdoK4o2X0jARrs9WPzytWsmjMvlQ+Qc9
         yGCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=HtagZa2utrgVZ8EO6yL1vWOFCbFLgOv3ljBb8Jq8YdU=;
        b=hakDRJSvv/Kyb0Zo84+N1dQrj8IK3gUHW8K5ABiGdI0zLiLcCGTKOG6IxeGaQ/o8A6
         Ah+Ty/sdC8K/Tnw09kVhDg37XbTbuemsJAbwWWtjf33zVfZVH7qlzQotH9+rZ3hcl5o4
         H6RWrT3N/Iikgn+u00Yx2nchbMp9xlJ7Y7XjomRHdRlccivWzEU9Czb7W/oPkiTLEi41
         vyyRZrpiN+sdcq8oACCabjPSf41bvSmy5/Q6JK19w7qEo51OVuBXM8F2i3/UhKw8/q1t
         UVgCJItjW2jMwMXkJNaKq7Ec/bxtJl8/xC1sDuDxcyr9zx7BYYu7xUGmilkaXtgwSHYR
         O1+g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Om26hhxJ;
       spf=pass (google.com: domain of seanjc@google.com designates 2607:f8b0:4864:20::632 as permitted sender) smtp.mailfrom=seanjc@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x632.google.com (mail-pl1-x632.google.com. [2607:f8b0:4864:20::632])
        by gmr-mx.google.com with ESMTPS id g17si464197vso.1.2021.01.21.14.35.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Jan 2021 14:35:59 -0800 (PST)
Received-SPF: pass (google.com: domain of seanjc@google.com designates 2607:f8b0:4864:20::632 as permitted sender) client-ip=2607:f8b0:4864:20::632;
Received: by mail-pl1-x632.google.com with SMTP id y8so2119380plp.8
        for <clang-built-linux@googlegroups.com>; Thu, 21 Jan 2021 14:35:59 -0800 (PST)
X-Received: by 2002:a17:903:248b:b029:de:9885:d1fa with SMTP id p11-20020a170903248bb02900de9885d1famr1583550plw.77.1611268559000;
        Thu, 21 Jan 2021 14:35:59 -0800 (PST)
Received: from google.com ([2620:15c:f:10:1ea0:b8ff:fe73:50f5])
        by smtp.gmail.com with ESMTPSA id j10sm6973556pjy.9.2021.01.21.14.35.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Jan 2021 14:35:58 -0800 (PST)
Date: Thu, 21 Jan 2021 14:35:51 -0800
From: "'Sean Christopherson' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Borislav Petkov <bp@alien8.de>
Cc: kernel test robot <lkp@intel.com>,
	Andy Lutomirski <luto@amacapital.net>,
	Masami Hiramatsu <mhiramat@kernel.org>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com, X86 ML <x86@kernel.org>,
	LKML <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v1 11/19] x86/sev-es: Convert to insn_decode()
Message-ID: <YAoBx6VPp/eMWHE8@google.com>
References: <20201223174233.28638-12-bp@alien8.de>
 <202012251838.G6eufP3Q-lkp@intel.com>
 <20201225123334.GA5874@zn.tnic>
 <X+ouv0PN6dmva92i@google.com>
 <20210121165845.GD32060@zn.tnic>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210121165845.GD32060@zn.tnic>
X-Original-Sender: seanjc@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Om26hhxJ;       spf=pass
 (google.com: domain of seanjc@google.com designates 2607:f8b0:4864:20::632 as
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

On Thu, Jan 21, 2021, Borislav Petkov wrote:
> On Mon, Dec 28, 2020 at 11:15:11AM -0800, Sean Christopherson wrote:
> > Alternatively, could the kernel case use insn_decode_regs()?  If
> > vc_fetch_insn_kernel() were also modified to mirror insn_fetch_from_user(), the
> > two code paths could be unified except for the the fetch and the PFEC.  E.g.
> 
> Personal Firearms Eligibility Check?

Ha, Page Fault Error Code.

> In any case, I prefer simple, easy to follow code at a quick glance.
> Stuff like...
> 
> > 
> > static int vc_fetch_insn_kernel(struct es_em_ctxt *ctxt,
> > 				unsigned char *buffer)
> > {
> > 	if (copy_from_kernel_nofault(buffer, (unsigned char *)ctxt->regs->ip, MAX_INSN_SIZE))
> > 		return 0;
> > 
> > 	return MAX_INSN_SIZE;
> > }
> > 
> > static enum es_result vc_decode_insn(struct es_em_ctxt *ctxt)
> > {
> > 	char buffer[MAX_INSN_SIZE];
> > 	int nbytes;
> > 
> > 	if (user_mode(ctxt->regs))
> > 		nbytes = insn_fetch_from_user(ctxt->regs, buffer);
> > 	else
> > 		nbytes = vc_fetch_insn_kernel(ctxt, buffer);
> > 
> > 	if (!nbytes) {
> > 		ctxt->fi.vector     = X86_TRAP_PF;
> > 		ctxt->fi.error_code = X86_PF_INSTR;
> > 		if (user_mode(ctxt->regs))
> 
> ... this second repeated check here is not what I would call that.

But then you're stuck maintaining two separate flows that do the same thing.

> But this is my personal preference only so it's up for a vote now.

Rock Paper Scissors?

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YAoBx6VPp/eMWHE8%40google.com.
