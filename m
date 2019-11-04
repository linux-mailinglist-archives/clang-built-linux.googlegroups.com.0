Return-Path: <clang-built-linux+bncBAABBJELQDXAKGQE63J63BY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23d.google.com (mail-lj1-x23d.google.com [IPv6:2a00:1450:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id 11EDFEDD51
	for <lists+clang-built-linux@lfdr.de>; Mon,  4 Nov 2019 12:04:05 +0100 (CET)
Received: by mail-lj1-x23d.google.com with SMTP id v5sf2285875ljk.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 04 Nov 2019 03:04:05 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1572865444; cv=pass;
        d=google.com; s=arc-20160816;
        b=PFt2Wg433LGZumI445wgkGWrWGWjwAFinJIPYjPmlyZbCGO+N6Sf9XTqvxziRJ/Y0J
         8wTmqzxqOZb0TTI3dfb4PnTdC66847wx6p5L3bVp9zpw7YBXCzAp5qYX2jZKua70ZEuk
         0+xPF6RY2NigvncZ17IMVVOH6WGAv7qKqztcRj5U8+k/FBAPRgmhWqyd0cKimDdDBX+g
         rJjTrayj0zpWWe6+Sm7a/+luy1Q2ttcvIltReIGqIils12Vxcx04zaieEQGObxXjm0pg
         E+sh5/vgb9r8wI447NLkzJ0QfKBCr1QjmLRa9U2OGhESD4QwFckwWi7dskqM9kbNvNRr
         lr6Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:message-id:references
         :in-reply-to:cc:from:date:mime-version:subject:to:sender
         :dkim-signature;
        bh=ZUT7HDaDo4GrL7TytLjevudDKfr68j5NvIDOoBWQ2Hw=;
        b=MRhALJ6EhsMfHUKyti6Ay91uXhJte270qgAFIATnHCBNl0CXuCM+jDkRYZ8t0HacsW
         CLQFVbvB4k96dcXeB/LKFR8jqtRp+kdakWAAkk81wYRrt8etrM2ejlS6zWxw/dsiKdef
         oz6hOOb5AMCyprhCAa4sUskFWJIy2oGVFcGSWQOdLLYBFeAsjbq+uvMXfQeckSmsLltP
         zo5ZIZR25NOVU6T7O4dmiOzzP3C+UbnlQvGyn/jnvUVGSsUEwX0LopL0ODgcdrEid4ct
         0pZpOIP75aNQMY7G8234SeJQ8OJ4FJM7o3Gv7L1iwbQJkuj7xAkEZXSM2IVtOP+ulJi9
         +5hw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=softfail (google.com: domain of transitioning maz@kernel.org does not designate 213.251.177.50 as permitted sender) smtp.mailfrom=maz@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:to:subject:mime-version:date:from:cc:in-reply-to:references
         :message-id:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ZUT7HDaDo4GrL7TytLjevudDKfr68j5NvIDOoBWQ2Hw=;
        b=HCMao5dhCy8SSg9kJR02pqjWjhXDR8sbJhgIGFRWuMc5IO0L9MdjrD2ZYIS30a5uRv
         HlrQDzCF++mG+FkhBN5d1IycNmycnjtQUE89llNANQfvM2kg1n87bMkFKAXA9MYg9D5J
         roDF2KGyrrc7wvg7qsmJLuFm3hqAu+QvLyTXH1+lBC+Qyeke7i3SqjM3ux92+MWH+FWk
         MAJtsXBLtJ5LzIjjMu9p9Ydm5FlPt76ABqVGlCSRNkgdGRdlGUDYY7cZ5SxzqSccHhUt
         pktTyMkpM/pxVV9DoRJCnTY8D293E0U8LKkZ+pgNUlj+sqO+IZihx6z3HhhSQyGYkaLI
         JWog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:to:subject:mime-version:date:from:cc
         :in-reply-to:references:message-id:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZUT7HDaDo4GrL7TytLjevudDKfr68j5NvIDOoBWQ2Hw=;
        b=YFi9y5X76STl5vuRYxSCAkzOkLlIy4bnEdWk1Uho/briCM98b4ZcTxkJWe6aKu54yN
         N3GwsQB+2eqpS8tYOL3ERUT0lw8Y4vNjf75WPo9Q2H26vXkVJr/dSbkm4d1kmwMjbvtb
         MPCwBKzUAAiJgXPqOjYObiuw4ph6WMblsJKuao4qCzPIDIYcz16/VMfL5b0Bi3dC1mWh
         02aK3uoGs1LEOkiiem1182Ax4McJBpXw+yym4vJ9dIxCrKq+iq0wYZuXKOCPjY0sAXAC
         0+u0rpQCtXRd03aRLGLAEVT6nHj9Whd4hx4wBBi0Sn6yFphtruBjItmd+AaV0Wa5jrPN
         Is5g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUWCbrPJb+4Yga67BcOp4/+jeZ4QOfDZICEONdmIaKXq+EdPuqw
	DPY42CxtxKYyeLJGRAFhCRE=
X-Google-Smtp-Source: APXvYqzhlfXj9K0YsOFZl+0kAPHZqEiWKNNKQUZH9jJaE5USzBCztRLl1JUW++kG2KgcEqQzkSqzxA==
X-Received: by 2002:a2e:8843:: with SMTP id z3mr17841362ljj.15.1572865444548;
        Mon, 04 Nov 2019 03:04:04 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:870e:: with SMTP id m14ls686086lji.7.gmail; Mon, 04 Nov
 2019 03:04:04 -0800 (PST)
X-Received: by 2002:a2e:9417:: with SMTP id i23mr6263558ljh.152.1572865444121;
        Mon, 04 Nov 2019 03:04:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572865444; cv=none;
        d=google.com; s=arc-20160816;
        b=BmrrXGzGKwavaFcbwx/mbRX1tIT/Tdcff1AQwqsBldIj/fJKcdiqQ/kCneLVSWqPIM
         msc+owSfXpHdfF6VLSGV57ulW/SJ/hmLpVb2BhO48umcXVprFkhv6rzJ6rtt7toI1T9x
         3M0wzcPewfqvxPIMQgOTdZxqcq7mq13/xDrH7a5K17EnlZTMtuUCdZcJAotp8KEyY4Lu
         5YjK3vHhlRvqrul8AEjl9jFOxo5k/Xvz7Q8VN9j9ydOjKJtIfgbNCsbifROG1K2+8pbX
         Uz77l4a4LEoi2aPdPjmPXYJs27VZjE5he6+N1XqMwfW5l1J0J/NDadfLmRrQyOYdO2PC
         1oCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:message-id:references:in-reply-to:cc:from:date
         :content-transfer-encoding:mime-version:subject:to;
        bh=2YGtffgu21sLBx6mcauveZ8fJL8aiPwtvI0beV+s1v8=;
        b=SQPM6et4Xa0MI402A0NeaRe7WL/OdvAax/z3W2jtUPlyI+Ep0jV20ig8x+p5PRXAh2
         WlM2HCbe0a3sbJRi25Dh3cSyU+wI8YaxZwn2Ska2TVziJm2JmPMPQ6HjzsSssRu9f8Ud
         m0/1vSrb3n7soLw26WHZn0HeFdIPUcuJanK6IncgmR5izQn6X5+qEQ5brF0RK/9wRq/6
         yHW6OuVm/pzDBzgyRojRGcWnLktqCssAT+javrAvrV2AUeIVFv1g3waFfUGfudo+POz2
         hmg0MOyDJi5RowmjNHVzsdNcxG1iez5nA1x5EEALSkNyJQkIsHzuw3qeCW8Mojef02rH
         iHyg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=softfail (google.com: domain of transitioning maz@kernel.org does not designate 213.251.177.50 as permitted sender) smtp.mailfrom=maz@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from inca-roads.misterjones.org (inca-roads.misterjones.org. [213.251.177.50])
        by gmr-mx.google.com with ESMTPS id r71si838563lff.5.2019.11.04.03.04.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Nov 2019 03:04:03 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning maz@kernel.org does not designate 213.251.177.50 as permitted sender) client-ip=213.251.177.50;
Received: from www-data by cheepnis.misterjones.org with local (Exim 4.80)
	(envelope-from <maz@kernel.org>)
	id 1iRa95-0003Mx-DL; Mon, 04 Nov 2019 12:03:39 +0100
To: Sami Tolvanen <samitolvanen@google.com>
Subject: Re: [PATCH v4 03/17] arm64: kvm: stop treating register x18 as  caller save
X-PHP-Originating-Script: 0:main.inc
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Date: Mon, 04 Nov 2019 12:13:00 +0109
From: Marc Zyngier <maz@kernel.org>
Cc: Will Deacon <will@kernel.org>, Catalin Marinas
 <catalin.marinas@arm.com>, Steven Rostedt <rostedt@goodmis.org>, Masami
 Hiramatsu <mhiramat@kernel.org>, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Dave Martin <dave.martin@arm.com>, Kees Cook <keescook@chromium.org>, Laura
 Abbott <labbott@redhat.com>, Mark Rutland <mark.rutland@arm.com>, Nick
 Desaulniers <ndesaulniers@google.com>, Jann Horn <jannh@google.com>, Miguel
 Ojeda <miguel.ojeda.sandonis@gmail.com>, Masahiro Yamada
 <yamada.masahiro@socionext.com>, <clang-built-linux@googlegroups.com>,
 <kernel-hardening@lists.openwall.com>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
In-Reply-To: <20191101221150.116536-4-samitolvanen@google.com>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191101221150.116536-1-samitolvanen@google.com>
 <20191101221150.116536-4-samitolvanen@google.com>
Message-ID: <79e8f958cbde52a3d90aec24dd4638d9@www.loen.fr>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/0.7.2
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Rcpt-To: samitolvanen@google.com, will@kernel.org, catalin.marinas@arm.com, rostedt@goodmis.org, mhiramat@kernel.org, ard.biesheuvel@linaro.org, dave.martin@arm.com, keescook@chromium.org, labbott@redhat.com, mark.rutland@arm.com, ndesaulniers@google.com, jannh@google.com, miguel.ojeda.sandonis@gmail.com, yamada.masahiro@socionext.com, clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org); SAEximRunCond expanded to false
X-Original-Sender: maz@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=softfail
 (google.com: domain of transitioning maz@kernel.org does not designate
 213.251.177.50 as permitted sender) smtp.mailfrom=maz@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

Hi Sami,

On 2019-11-01 23:20, Sami Tolvanen wrote:
> From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
>
> In preparation of reserving x18, stop treating it as caller save in
> the KVM guest entry/exit code. Currently, the code assumes there is
> no need to preserve it for the host, given that it would have been
> assumed clobbered anyway by the function call to __guest_enter().
> Instead, preserve its value and restore it upon return.
>
> Link: https://patchwork.kernel.org/patch/9836891/
> Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> [Sami: updated commit message, switched from x18 to x29 for the guest
> context]
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> Reviewed-by: Kees Cook <keescook@chromium.org>

If you intend for this to be merged via the arm64 tree, please add my

Reviewed-by: Marc Zyngier <marc.zyngier@arm.com>

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/79e8f958cbde52a3d90aec24dd4638d9%40www.loen.fr.
