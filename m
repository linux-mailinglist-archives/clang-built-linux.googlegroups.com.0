Return-Path: <clang-built-linux+bncBDAZZCVNSYPBB46RQLYQKGQEOZVDB4Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x638.google.com (mail-pl1-x638.google.com [IPv6:2607:f8b0:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id A48FC13EFC5
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 19:18:28 +0100 (CET)
Received: by mail-pl1-x638.google.com with SMTP id g5sf5801069plq.17
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 10:18:28 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579198707; cv=pass;
        d=google.com; s=arc-20160816;
        b=IijVvZShHUvxv+TmLAbaIaEeSGESNTvuVOF/x7aGN4apCrgNipZ3o57loVNxmTR5Bj
         0fXYc9zQwo7rjsbgaJGk7L6xTODtQ2qH3EekhlbB1SqbuDSGlbidk2ORnNKLS4SFW3He
         8BsNIbCItfRI7+tZ2CqmMBP5CRkxyhx6hYa09f0d1P2WcABlNoUis0CxCmxXeYARSPKS
         Ls7aH6H3uJKsoGYwT2Ec9RvGPTNE9fR0+A1QwmXADp9JoUcwr753UkZ2R2HqxbRY3Q+7
         n60M5fjq1RY+EmCevJix7Z53Jc1cGgsVPUB3G5+4KSx4qGKl5UqFoobQk+yd77Ay8ZeY
         DaeA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=wqsUpeq55N4ESvJ6zEpmtILM0Ph067QAMcuiZVT+dRc=;
        b=UV/gJSE9/uW6WivXUZRrA3pyZsVEzz631WbCTsbyp3rAd9Lvv+DMBE7aGuXVreoQNS
         a+UYU6gSA093CVLjeDY9p41lIy05UVpBQi9O38raHBOKfv759aq9tMcfs6y7ea7apS4O
         O8v/6dLOQMWrDXA1Z/Zi67u0Y3E4hx8UDMZkyPaDAwYV5aloZWHvy6MNib0g0GajdNpF
         +gJLO9DMpmWyMxgF4RxTjwZBaNSM5kzJHV4ZKf5BXdMKTGHPYHpgzwmabxZ868MPryxa
         ETuiiQhpdLIdPDDJfyj3OXbapAn/RTa8bQmdVv7vSCtBYs5uBkq+1hK9MezEhk3WL/mS
         1MtQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="uSA1/16J";
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wqsUpeq55N4ESvJ6zEpmtILM0Ph067QAMcuiZVT+dRc=;
        b=gUmYzu6Sa+BxjttikONtzH+hlNmvZC2NfzpvUirOWDCLcAzxAtnMO0xumNgXqEbVo5
         aRyb6AmYKubOhbNrMwUL/h8HfeL+pgKpFPC0Wv2wcAhYM8W4OtZGBfwITymcSTp9brFX
         uoXbsijFzJchXyLfuzp2WhwRLcbqk3YkwYY0Y66Okv+Hso6EZzkGB/uR4dA3hqjuT8CM
         Tf0YR0L+jfvayhNUOGBrdouw2gGA+3xeIyZdrDgFTq0xQvJPqvNtRMdPk2RU+ZYE5yv4
         yeaoxhOOuFo2+DMoHjA70cC3YJvOvBi86M8nMESPi8Y8v9absz5XzAlCSUlcrXumdmjE
         xv2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=wqsUpeq55N4ESvJ6zEpmtILM0Ph067QAMcuiZVT+dRc=;
        b=HDowj3BwRkuMDa2X08VNZMOYpdh0cuUNOWaLASUdW2gINetw0O6IsRlp10Lfa+xHr6
         bxtlq0MgQ7hwAPVytRrh9yzutaO1HjaT45jpxJEWbqtaPdPaZTRLoBURFtMyDx8EI6GZ
         5wrGv6p5U+SKVCnVxYrtQT+cp9IBdkODX9M9DRCRVyGoWUHU5HmdxVzYrLnJ4LxCGGyf
         rnFVb+risl/d+0/gzsxtE+Ulx6/Bs+xRqzpiX8HRuLHhPwQpiC6nV9PfiyY2G3WWHZNN
         srpclpsXX6uND9KwOgKeeXZeqfasNzQe77Kv9EPf+163pYWneFt8qAvZXHoOjfRdCmJN
         SrEA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVQ8Nf2rq4ojAnfS6yhbiwJHdztG/lEa181Oe9527NWX/1Msf20
	JwvQrVc4jThYs/jMkWbp16E=
X-Google-Smtp-Source: APXvYqx43X9hkFLKoCK5xOyvwLEc3fhUiYrkZvSqAPzvOn87Yri5Nm3neGd0kld6eh5WgxuK4Lx6Tg==
X-Received: by 2002:a17:902:bd87:: with SMTP id q7mr26168930pls.239.1579198707315;
        Thu, 16 Jan 2020 10:18:27 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:a701:: with SMTP id w1ls6234413plq.7.gmail; Thu, 16
 Jan 2020 10:18:26 -0800 (PST)
X-Received: by 2002:a17:902:8685:: with SMTP id g5mr34398428plo.5.1579198706850;
        Thu, 16 Jan 2020 10:18:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579198706; cv=none;
        d=google.com; s=arc-20160816;
        b=i17+rHUTlEfgnmAsQ6BmBBag2Qjd0i25whr9uz9LBBVBRQ7rX1pzGGEvzll1B/48+e
         48Z0GRIyYdP1WJfrcXu4SEBb0J7An+iIvI9VtnR/lAa42NGshk7lBdS/3wkSzGMHG8PW
         Eg6BnM3/dcG0n4jEX8vHq+naum+QYWYU49lx8qUe8tQJ7UjPLUGQLbS+wr9kNPfeo9X3
         TdBl/MYGjpM9mD8sq74A9hDVWj9eLyooZ0kN2YU+mM9xSKjtn6UxtHtXyVUR8OPAGH1q
         veGzt0oeRW4iCgMqQ5+/GapIusiplzet2dIdIH6X70uP8RzQj9XI29FWS/CC1qT2TlFE
         4utw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=tM1p12/sZvemqqrVhJ1eXiXTLSAfd9M0W+chMuIuaZA=;
        b=KXXtpibxQUCaBBtj6pgv022rhuHZJG6dybj3+6tMxYw/rhe2rcRKafe5A41YVTVKrf
         Tll5bkfTCKwK+TXYREpmRotZSVy0EQZ/QqHd1BC5C2HF9lw/tBgJO474xPABXmLvvDeD
         pitbvcEQv8UzUvrhtixNsyXCNQHkkZ8IThGpT88njC06ninvL2tEQgQcrwmkR/xBRDCx
         wbOt8nHbTMPxMJYpltakPjVdtlO+TAtr0rDsMJEUhwbVaYdoYxvFbSH4cV28W+JM67YZ
         DeotqcwjYvD5FF6HC1vPy5CDWyQaWjMjSNuoF2fNNujkK6YMW3onkadquaHBjdr1vRkR
         e1WQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="uSA1/16J";
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x12si907768plv.3.2020.01.16.10.18.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Jan 2020 10:18:26 -0800 (PST)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id BD97820684;
	Thu, 16 Jan 2020 18:18:23 +0000 (UTC)
Date: Thu, 16 Jan 2020 18:18:20 +0000
From: Will Deacon <will@kernel.org>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	Masami Hiramatsu <mhiramat@kernel.org>,
	Ard Biesheuvel <ard.biesheuvel@linaro.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Dave Martin <Dave.Martin@arm.com>,
	Kees Cook <keescook@chromium.org>,
	Laura Abbott <labbott@redhat.com>, Marc Zyngier <maz@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Jann Horn <jannh@google.com>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Masahiro Yamada <yamada.masahiro@socionext.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Kernel Hardening <kernel-hardening@lists.openwall.com>,
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
	LKML <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v6 12/15] arm64: vdso: disable Shadow Call Stack
Message-ID: <20200116181820.GB22420@willie-the-truck>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191206221351.38241-1-samitolvanen@google.com>
 <20191206221351.38241-13-samitolvanen@google.com>
 <20200116174648.GE21396@willie-the-truck>
 <CABCJKucWusLEaLyq=Dv5pWjxcUX7Q9dL=fSstwNK4eJ_6k33=w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CABCJKucWusLEaLyq=Dv5pWjxcUX7Q9dL=fSstwNK4eJ_6k33=w@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="uSA1/16J";       spf=pass
 (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=will@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Thu, Jan 16, 2020 at 10:14:24AM -0800, Sami Tolvanen wrote:
> On Thu, Jan 16, 2020 at 9:46 AM Will Deacon <will@kernel.org> wrote:
> > Should we be removing -ffixed-x18 too, or does that not propagate here
> > anyway?
> 
> No, we shouldn't touch -ffixed-x18 here. The vDSO is always built with
> x18 reserved since commit 98cd3c3f83fbb ("arm64: vdso: Build vDSO with
> -ffixed-x18").

Thanks, in which case:

Acked-by: Will Deacon <will@kernel.org>

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200116181820.GB22420%40willie-the-truck.
