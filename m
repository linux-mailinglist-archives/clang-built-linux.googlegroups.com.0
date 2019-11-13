Return-Path: <clang-built-linux+bncBCU73AEHRQBBBGWOWHXAKGQE6PYR65Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x240.google.com (mail-oi1-x240.google.com [IPv6:2607:f8b0:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id 190D6FB9C0
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 Nov 2019 21:27:08 +0100 (CET)
Received: by mail-oi1-x240.google.com with SMTP id l188sf1809956oib.22
        for <lists+clang-built-linux@lfdr.de>; Wed, 13 Nov 2019 12:27:08 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573676826; cv=pass;
        d=google.com; s=arc-20160816;
        b=eJXkvcQVKtwglrMlOgHCoxehedIvP+CnoCkLfLYIMaesm+t7ij63riI/pUvZsDVJla
         F/yWg52LNjZNpP1iXon4MSHkyF+OEjKH2Zl0owf/PGX+zd0l1Rp5bUyLbntHXY28Serl
         qFwFGKcIEZ68OJwQHFTLXC6p5HWczc/TWjPihCRt1kTosSNwI3K5S5uT1xXOmNOlcLlY
         Cp547q9qgGzG1gEiQogLjjILFNKTLxBp9IUn5m+hp/JUaj0M5SjRQ+Ex4u6vQ/G/laAx
         irPASEshJ8GSofrfB60DW68AUqyfF2C06uu/+5eVZHlspiPdzgj0xB1EtzkDRjZpAhnK
         REJw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=W5Fn1f+BUovbLIJ1jYaTdeJJARSWcDQJ+pn9HEU91c0=;
        b=YsQJ94XAj5l/O1EJtRuDJbNzBFZp4C+GWEIpbLky0I0G+E3TLEKIwBzUapvcdq7A6z
         qX4zvANfNXlOQsfjrO4SzKSO2aI5Y+oEG6PGK6WpqCsj3WtZwVjbRTwNDylij9oUeJNV
         f0i7wtxF3uCuUBisAP2QC9UgUfAWJoQyKmDXloZTovaJbCajtrRlQp90DagUx3sqiam8
         SXar6HQkYPk7uZ/pExlDHgZ+Reb0gq2YspHaCmxdMxGCXzx/i0LSEcF7hcrk2UkSv4HJ
         7UrTaZK17a9+DdccM3Zvivoo+jDVZqJppY5wP14V3em6HanaEuUEtMaPS9wi4AgECL/e
         44dA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of srs0=n35v=zf=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=n35v=ZF=goodmis.org=rostedt@kernel.org"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=W5Fn1f+BUovbLIJ1jYaTdeJJARSWcDQJ+pn9HEU91c0=;
        b=Y7Nv5yCrgzxPWyM5LDRfHEdfTXJSoEt4Mj/VUlxUr6I19orhOabp5hfqvJ/FtY6S9P
         f0PHXnHpVNlVj7nezG9o6QGt7Jr2009lY6oBTU5idEpKJLAJ79HK0F+uFVdEBhDVGaKX
         gg+4SD+qJplBdRrM5f160TPJUISIKjc0Uh1jvSFXVzewnTdFXRSUU1+2rzVSRGpHr3g6
         YiPYQwFjFWsHm9PE38Hq58KLQHognH/JEv/yw5g/SgG3HqLxRHdIkolPibfMpIVoXO3a
         W260LJir8VsTDr5pFykVI2aeCsenU6p6rzBD1XU69SZy5tbLZP0UPyt22qJZMZD2mWE3
         acLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=W5Fn1f+BUovbLIJ1jYaTdeJJARSWcDQJ+pn9HEU91c0=;
        b=Ja6xTeoE3TmSiOCoXTEwphqTBHLo7e0XeaS0VmWQV8I9EqqzNgd/p6zLdWJ0P3Gkkm
         6odMfUe41lIh5mERhqPo4NvZvsW90o/aoXNUfAL+5+JabmLhdDTfHDFW0MLVjUxLkSzB
         io+L655j4MBdOzWez4GR+4cY6QwJK0++rjrTfqadn4Xt2Wa2y2U7y+lnYGeUpxXQpavm
         G1o4wNFmBvnHpApQM6/gl6NbkUEaaHSSUju74h7AmDD9ERGuxP+PLZ6ruCqiHGCQxrXz
         sfG8CqIw8hc8Cjdl9658nL54yIpgec+zZm0a7gnHY++YCx2sIYcW+z6vbwqSJYWssjbi
         lFHQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWqJ2ZfpiFSRaMu82X5HN1mMUF4K8Xd/6bCDyTjLSLOri3uYFsT
	SQda6cnw19DvxjeXp5kl/cE=
X-Google-Smtp-Source: APXvYqxVmpn1KaJvxo0FtHZK6FMo9+PjpauRm5B73LZNm2TTpt3ePSzBPRuX5+Y7wxS+NU1gcBAgRw==
X-Received: by 2002:a05:6808:499:: with SMTP id z25mr467130oid.62.1573676826633;
        Wed, 13 Nov 2019 12:27:06 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:72cd:: with SMTP id d13ls969376otk.6.gmail; Wed, 13 Nov
 2019 12:27:06 -0800 (PST)
X-Received: by 2002:a05:6830:2001:: with SMTP id e1mr5257164otp.48.1573676826300;
        Wed, 13 Nov 2019 12:27:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573676826; cv=none;
        d=google.com; s=arc-20160816;
        b=vdxv+TfiJtCas3+kwE1AMcCaq6H8JZIOAVn6begeGWHwtUVzxoLc8+ozwfur3HD68p
         EyiKRjS8nQqyGVIQfpuF0HV8+kMe8FklXEKvkseMkHCwdZqywFrXB2JZFLQGg5JdMzGz
         olanB5N1G7A4ELIIG8uqjO4Jg95ICdLXifpGOtU1bE2NQpQFeK2fQIGkBffhUo5DNW3d
         zFVBqyPQ5KlhZd5GtiZefu1iYJn1vdWJI1v4bDKjDdUjIY5B9SMJ+giV8nOtIhwT9GZH
         WIzk0YA4K81NLPhpZ7ShCMlj3rSAGNyeuyi5qq/MFfHnATI+6/vibkehGrThMvx6OX3q
         9BFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date;
        bh=ynmReBgqO8oAEHYcUFgymjkJ92osRsCWRB2iTs5zs3k=;
        b=ACXciaDxdXYmkr5YuxKDBZy8gEZN/wdrSlzKJJEvgCxm+FPeQWBG3seUoby9LTUEYf
         pF83Xe6J7uYyi5oPjgDpT/Hy4C2iX3A+KY+87eBR9aORtSEZILbf7g0YEFP4JRgvjejG
         jeQb9k+PiMZNyPFqjhOLJQoUWsqUD+nqu6bobDTHp/OXRWcuty307wqkdn2OZcJMwI3x
         pP632rVyB+IZtuR4EZ1Uh58khAZZvqAf7IViSbeQ17/9AQ24vVReUsF9HEHLp1xvcLhS
         AcfJbQu7I8xcaZAG57cZGg69Gsa7VAkRieUEVTLkaZWvaYxdNQLlIZCsI36YoT7a3lO1
         bRPA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of srs0=n35v=zf=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=n35v=ZF=goodmis.org=rostedt@kernel.org"
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id l5si147927otb.1.2019.11.13.12.27.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Nov 2019 12:27:06 -0800 (PST)
Received-SPF: pass (google.com: domain of srs0=n35v=zf=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from gandalf.local.home (cpe-66-24-58-225.stny.res.rr.com [66.24.58.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id E9155206E6;
	Wed, 13 Nov 2019 20:27:04 +0000 (UTC)
Date: Wed, 13 Nov 2019 15:27:02 -0500
From: Steven Rostedt <rostedt@goodmis.org>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Will Deacon <will@kernel.org>, Catalin Marinas
 <catalin.marinas@arm.com>, Masami Hiramatsu <mhiramat@kernel.org>, Ard
 Biesheuvel <ard.biesheuvel@linaro.org>, Dave Martin <Dave.Martin@arm.com>,
 Kees Cook <keescook@chromium.org>, Laura Abbott <labbott@redhat.com>, Mark
 Rutland <mark.rutland@arm.com>, Marc Zyngier <maz@kernel.org>, Nick
 Desaulniers <ndesaulniers@google.com>, Jann Horn <jannh@google.com>, Miguel
 Ojeda <miguel.ojeda.sandonis@gmail.com>, Masahiro Yamada
 <yamada.masahiro@socionext.com>, clang-built-linux@googlegroups.com,
 kernel-hardening@lists.openwall.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 08/17] kprobes: fix compilation without
 CONFIG_KRETPROBES
Message-ID: <20191113152702.291884f3@gandalf.local.home>
In-Reply-To: <20191101221150.116536-9-samitolvanen@google.com>
References: <20191018161033.261971-1-samitolvanen@google.com>
	<20191101221150.116536-1-samitolvanen@google.com>
	<20191101221150.116536-9-samitolvanen@google.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: rostedt@goodmis.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of srs0=n35v=zf=goodmis.org=rostedt@kernel.org designates
 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=n35v=ZF=goodmis.org=rostedt@kernel.org"
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

On Fri,  1 Nov 2019 15:11:41 -0700
Sami Tolvanen <samitolvanen@google.com> wrote:

> kprobe_on_func_entry and arch_kprobe_on_func_entry need to be available
> even if CONFIG_KRETPROBES is not selected.
> 
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> Acked-by: Masami Hiramatsu <mhiramat@kernel.org>
> Reviewed-by: Kees Cook <keescook@chromium.org>

Acked-by: Steven Rostedt (VMware) <rostedt@goodmis.org>

-- Steve

> ---
>  kernel/kprobes.c | 38 +++++++++++++++++++-------------------
>  1 file changed, 19 insertions(+), 19 deletions(-)
> 
> diff --git a/kernel/kprobes.c b/kernel/kprobes.c
> index 53534aa258a6..b5e20a4669b8 100644
> --- a/kernel/kprobes.c
> +++ b/kernel/kprobes.c
> @@ -1829,6 +1829,25 @@ unsigned long __weak arch_deref_entry_point(void *entry)
>  	return (unsigned long)entry;
>  }
>  
> +bool __weak arch_kprobe_on_func_entry(unsigned long offset)
> +{
> +	return !offset;
> +}
> +
> +bool kprobe_on_func_entry(kprobe_opcode_t *addr, const char *sym, unsigned long offset)
> +{
> +	kprobe_opcode_t *kp_addr = _kprobe_addr(addr, sym, offset);
> +
> +	if (IS_ERR(kp_addr))
> +		return false;
> +
> +	if (!kallsyms_lookup_size_offset((unsigned long)kp_addr, NULL, &offset) ||
> +						!arch_kprobe_on_func_entry(offset))
> +		return false;
> +
> +	return true;
> +}
> +
>  #ifdef CONFIG_KRETPROBES
>  /*
>   * This kprobe pre_handler is registered with every kretprobe. When probe
> @@ -1885,25 +1904,6 @@ static int pre_handler_kretprobe(struct kprobe *p, struct pt_regs *regs)
>  }
>  NOKPROBE_SYMBOL(pre_handler_kretprobe);
>  
> -bool __weak arch_kprobe_on_func_entry(unsigned long offset)
> -{
> -	return !offset;
> -}
> -
> -bool kprobe_on_func_entry(kprobe_opcode_t *addr, const char *sym, unsigned long offset)
> -{
> -	kprobe_opcode_t *kp_addr = _kprobe_addr(addr, sym, offset);
> -
> -	if (IS_ERR(kp_addr))
> -		return false;
> -
> -	if (!kallsyms_lookup_size_offset((unsigned long)kp_addr, NULL, &offset) ||
> -						!arch_kprobe_on_func_entry(offset))
> -		return false;
> -
> -	return true;
> -}
> -
>  int register_kretprobe(struct kretprobe *rp)
>  {
>  	int ret = 0;

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191113152702.291884f3%40gandalf.local.home.
