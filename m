Return-Path: <clang-built-linux+bncBDDL3KWR4EBRBQHJXHZQKGQE6MMEJBI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13c.google.com (mail-lf1-x13c.google.com [IPv6:2a00:1450:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id C60A8185F0E
	for <lists+clang-built-linux@lfdr.de>; Sun, 15 Mar 2020 19:32:32 +0100 (CET)
Received: by mail-lf1-x13c.google.com with SMTP id i200sf1112827lfi.22
        for <lists+clang-built-linux@lfdr.de>; Sun, 15 Mar 2020 11:32:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584297152; cv=pass;
        d=google.com; s=arc-20160816;
        b=o/G0kwxh4mnpX4hlc4a0eOV1KX+Bnz4PRt3dz7JWsNutHdQ6KITRG/SBKW3bRBdIhY
         I7rRioYTlmPoIZPvu6zHOpQ4aN6C5eVbodnyo5TLzngvhhqLEMDDOzUEJsi+n0jViNmX
         gzpNfns6ZHEjLiHvZyY4lnNeR8cPkuQEywt12pnP9pMalbgJ02L4RO5yI3OLdoLQ6pDP
         wh0GBFe7JC2N60NWVqmFSqFK9KlDSOVd2ZdHXmejbbR6DnWF7+xyvsz0CDcuCv2gOLOl
         uTpRRYVGOmRyCsgrRpAW89iRKDJa9pZIfZ6BgM05StOkYELaEg6zhtikVnVNvDGblVvD
         nZ2g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=nZlrc58sStq4DGUqQgjwYiRjhEUrJZZEwOV3EoIUwtc=;
        b=S/eWztSpoBkxyCYUkx72NNS3D1TDqM7KdybEe9otTP6+hL02fVe4wYT35+yZQcCE1w
         2pgg9c17tTtLBGd1IyZw2/hddRKvzJ+XPrq6YvRqkPnU+sEKsFYK+lBbWyWFXshB+0Io
         1GtffjZ7oh7wuN1aufuwmEixZYJDnEl5gGTF2mDBL8HEV3XiYgROCPtlqL+ycPUkkONF
         VEeG/0N/ZulhDFpM3Fw9w8fiMFybX49lNaYLVOa2cuGVy88o6JBa4n5dCRpDTGK6Qv25
         YLIKUMEBUG7BVJ2lTtTKBBsVkkzvsL5wIRpTdD0rDRUZIW3tkPSvGgbW6+yt/uTb5SFu
         fQzQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of catalin.marinas@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=catalin.marinas@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nZlrc58sStq4DGUqQgjwYiRjhEUrJZZEwOV3EoIUwtc=;
        b=np0yEBVwWhEDUtWqzgeg/CWUyN56J5LiApdSfpcfO1L/Wtj2bI873MFSLj1MGTHLQM
         O4+kAafTKQ7QXr70+S9Zhmt4EVc9oszHtIsS9qpmaJuxBU0MEnYJBUMzotSz4sG1MOuf
         QfZ6SVVUC6CyUX6lhlcPm4KNiplhluWof9OMNQROANWbNev23p1YQz6BNSSgDxXVk/nz
         bApre9+bUP3EL72EEcZbC0DMYB+ndb57DZtxWQ/R7oQQtUUUH1tmDUUqMP2Ir0ocuzif
         Gu7KuQkJuOGg9VBT8Ufs1wfg7leWeq9YhfhKWXnAZenX6A27HQwUzsDhk85gx2gsgMX0
         STcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=nZlrc58sStq4DGUqQgjwYiRjhEUrJZZEwOV3EoIUwtc=;
        b=YgksE7mwk7C4W8xJLSn5Crj2de1pNqcO0IMY8G+PG2wFk5sD4+vusHCnKUAPRSukdY
         iC/SCYYbBTcmq8KJovkm4OkEe6BVR9ZQO1oc0dBhKPo1IHhEOCUGDyxgKQkL+6kb6ki1
         zM8nb947t/G4ffKEY3bEN5rAuPZvjRxAYOhAuGUwjUbg4bcx9U/J3po6qtazxHgWT6lV
         SRCL4JVsCuQh+ZlQaqrUs2EVdfVn8b0nQKwUOEbJ7OW7toBaS5er5DcsCcUEsRICG837
         v68uDdeljBycEyuPe+EERJN0vTQq8lyCDL+AwqZWzaIXrnjwM5zZZKRXpI2qUNjSf1hh
         ZRJA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0dCA7BiO/TsiBh8AgPJX1OSNvEl8c8R/cVSyIZNZx3BbjvTEIH
	iwC4blou2yZEHs7MHNLxcYs=
X-Google-Smtp-Source: ADFU+vu12QnThwpNSLzU1Yheuo804f8FtCvY8y76pjfLJktLp1BOEgZa3CML+txjGr7BwE9VPJ4+8Q==
X-Received: by 2002:a05:651c:1034:: with SMTP id w20mr3914596ljm.14.1584297152249;
        Sun, 15 Mar 2020 11:32:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:211:: with SMTP id y17ls2862664ljn.10.gmail; Sun,
 15 Mar 2020 11:32:31 -0700 (PDT)
X-Received: by 2002:a2e:99c9:: with SMTP id l9mr1565577ljj.79.1584297151404;
        Sun, 15 Mar 2020 11:32:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584297151; cv=none;
        d=google.com; s=arc-20160816;
        b=xJw2aoOiYMBtIajtM/e1n97I+sKZVfozvmwveBAJQoXB1xU15qn6TW+TPKGrjaORhn
         pMg4yni5NNlHAPV1YeGHYfK5pS/TwepiKMDeoVaE+5lTU2sNROyCxoGj+aNaZxGMBnvf
         LyunmpIXamp3OfJF5SJ/G/5E7iRH+maR8BAK+J8C6peCIrJ7FnKHKSlrgiwy3uuWXLaU
         bDiPOyWxGmVT9tuLRN56UC6HrxFMMVcRMETsFbG1WZvGIeI9dVuCXdix+JZ1uD+hY7d0
         Pgzr12P4rD5zEFpg+BKpsbip5DOgozbVhakKQ1qblwNt3MY4sEFUJyjJzm9nQG/4/01x
         vHIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=UYBNu+XgW6D7rDzcXWZG1I6BcOWyzSjOVGP5RJSgTnc=;
        b=g09FF5ixTK9TGPBEYEarA3AQ2WSJ6uaqb6ZJwni9nwtFNGui0TvUZzzsXdxUhbVrYV
         W0OoxgOFGLjM/yXUr6ptMRKCPPzrY9ATDL8Ase1Q8IEJ0xVGE/otr4BlvyFvXcS1zfSo
         chhDsfmgbJxkW/uJT87rng346XrpX5oYLpvIcuPFXdY+xkw3R0CDIONgHJfWSmrHz/jn
         NixVXTLuuT6SZOfAG5bXpnw3oGeA/rVNLiQ8dW5Z50lyYHteYdm106Q5ZXY9fBfIl1wJ
         1fa7ZRr+rQ+LCESoNCyAEFQ+awFjx0NHpntWdi3cvpB01GVuSB24PZYckrM2Mlxu0Bn9
         g/Eg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of catalin.marinas@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=catalin.marinas@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id m11si477865ljj.2.2020.03.15.11.32.31
        for <clang-built-linux@googlegroups.com>;
        Sun, 15 Mar 2020 11:32:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of catalin.marinas@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E967D1FB;
	Sun, 15 Mar 2020 11:32:29 -0700 (PDT)
Received: from mbp (unknown [172.31.20.19])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BEC763F67D;
	Sun, 15 Mar 2020 11:32:26 -0700 (PDT)
Date: Sun, 15 Mar 2020 18:32:16 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Cc: linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org,
	clang-built-linux@googlegroups.com, x86@kernel.org,
	Will Deacon <will.deacon@arm.com>, Arnd Bergmann <arnd@arndb.de>,
	Russell King <linux@armlinux.org.uk>,
	Paul Burton <paul.burton@mips.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Andy Lutomirski <luto@kernel.org>, Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>, Stephen Boyd <sboyd@kernel.org>,
	Mark Salyzyn <salyzyn@android.com>,
	Kees Cook <keescook@chromium.org>,
	Peter Collingbourne <pcc@google.com>,
	Dmitry Safonov <0x7f454c46@gmail.com>,
	Andrei Vagin <avagin@openvz.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Marc Zyngier <maz@kernel.org>, Mark Rutland <Mark.Rutland@arm.com>,
	Will Deacon <will@kernel.org>
Subject: Re: [PATCH v3 21/26] arm64: Introduce asm/vdso/arch_timer.h
Message-ID: <20200315183151.GE32205@mbp>
References: <20200313154345.56760-1-vincenzo.frascino@arm.com>
 <20200313154345.56760-22-vincenzo.frascino@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200313154345.56760-22-vincenzo.frascino@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: catalin.marinas@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of catalin.marinas@arm.com designates 217.140.110.172 as
 permitted sender) smtp.mailfrom=catalin.marinas@arm.com
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

On Fri, Mar 13, 2020 at 03:43:40PM +0000, Vincenzo Frascino wrote:
> The vDSO library should only include the necessary headers required for
> a userspace library (UAPI and a minimal set of kernel headers). To make
> this possible it is necessary to isolate from the kernel headers the
> common parts that are strictly necessary to build the library.
> 
> Introduce asm/vdso/arch_timer.h to contain all the arm64 specific
> code. This allows to replace the second isb() in __arch_get_hw_counter()
> with a fake dependent stack read of the counter which improves the vdso
> library peformances of ~4.5%. Below the results of vdsotest [1] ran for
> 100 iterations.

The subject seems to imply a non-functional change but as you read, it
gets a lot more complicated. Could you keep the functional change
separate from the header clean-up, maybe submit it as an independent
patch? And it shouldn't go in without Will's ack ;).

-- 
Catalin

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200315183151.GE32205%40mbp.
