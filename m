Return-Path: <clang-built-linux+bncBDRZHGH43YJRBX534P3AKGQEBRYC3VY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x437.google.com (mail-wr1-x437.google.com [IPv6:2a00:1450:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 20E211EE388
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Jun 2020 13:41:20 +0200 (CEST)
Received: by mail-wr1-x437.google.com with SMTP id r5sf2329094wrt.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Jun 2020 04:41:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591270880; cv=pass;
        d=google.com; s=arc-20160816;
        b=l3ULp+2ejaPBrKg+24DQyHEP5lVcaaHrBnAr9IkwmFoD3JVXn7y3rlrzf6InTL2L3Q
         WFCZhnYgeWqyZAlcWNe6us4c8HS3RHMlMROrje9Fh3bd5G6nqaBKU3bBCp/PqzJQGWxJ
         W68i4GlPRelRjhvlemNN+spN+Y67z6MlmYEBksI6jjvXU93uKcDFHUjWFYkh5kYVxdWo
         Mft7MHtnWrI0WqqaF8Pnw8DIjKXsBgYDWVKIE71Xoe0Kxp5b5OZXdPdeJrQSQYYj0lkL
         kmHi2IoIsOAnfFB9w/QaFBijrQWGCRydR74cSk7msF8A18QvN0Tx8pCeCWrXNiV3ZPxe
         NaQQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=MP2kC/XSmSfFHpij8v//KnPgocqsqmOwQQjrKUo7UnI=;
        b=na36tQ188rMawTaAu+3Kozf7zY9RGjd0HFkqewjTnwPZxifP2G9BUUHdUrYu8XpDqY
         EzP8k6IJ3yJMkd8Xf9gKMrnueevrBmqc74RTTbxVC5ywAFwHuiB78M7BR2GmeCPYzMw6
         eRHMiXz6VjFJ1AYjNQxpWCO494ltfrJK4lqwV1lt0/PJM6d6j7M6in33sAo9MUHbk+3s
         2H/HmBxffovJRlMuLU9ztDvZ3Zp4l+an3ZSpdXnqmjwS//ugOsaDCS60IjREKM30BzsE
         uAtAFIst5a1D01Ssbi91OHOrKOkpoQ7WLdWjNJsHdACEUiPb+8HcBuM0Og+VznKHhZsL
         In2Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uOadSoLG;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::241 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MP2kC/XSmSfFHpij8v//KnPgocqsqmOwQQjrKUo7UnI=;
        b=KHR4q2auyTUFn2s8/U1fMFWF0AMY2ozE9xKKkXGtEV+7wamdnBUuOZI5DInpnIPWTg
         sZKmYmY+WS3/uuAJvMzBUbPVEwXcZNTxzkz6u4XJJX6kt7aWwIPZJFIuSsEt0uMS3VXL
         rO8ezQyOY4n0krorz4kpLDX69rNWrukOlQanL7h8Q2GIa2ZorpeG0gZMUOlAsGv0gT+b
         bdnoUv/kijRWkfq4LH3ej1HVa0SMcxU5Q+4mM7b9wyXl3tVZeTvDxDEIesxbVymPPTsn
         CzRKMdhdA3q1RZ56NsaZDSkEnz7jZXaZrVYx25UhZuQCVJ/YVKZcIGwP7a5/Rto7Tb7Z
         o5Aw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MP2kC/XSmSfFHpij8v//KnPgocqsqmOwQQjrKUo7UnI=;
        b=pofCbVVsKGSMlCtZzn3KGLH/qBo/rU8fFFYxqA2UfcU/Hu3gREW9gIjb3nLoR/oFj5
         bcDXUg4aGV39MtAzHu/G2ybYFQV3CSA4yJMGpo2WodwmWWQlESv2dgF5SXfqdS5mB9wJ
         HbdWe7hocIs4GrVBWk5JGTFDLj3EPOvbT7OzWtXaBw6u0o9t3cpDEgm3vkIFFMQ8VVWr
         kdSssOzAGZm0Vmhxcf4QjsnUHENy/pg3NpiYIb2Sj2o9fWeBCcS7LbKK8Bn4Xu1XFxQR
         xoDHd3A8CB/2Nn7dCb2JRz23akjv6alkvWM7+1cTdcOKmTcRq7pFOJNUb6NubCpYqXkx
         HZ6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MP2kC/XSmSfFHpij8v//KnPgocqsqmOwQQjrKUo7UnI=;
        b=hdSpsZ/M12MhAAWgbDyBAKsOZqHr9qbQXrtpZU318maxSFRk7uBkhHGP+aokjVWqHY
         PfzGtgD+H+fmQpt+uY4khfnqORymHh45icgBfLy7dQGHaoP6QCh4fk2bWe5SeNXS3sXU
         u6Gt+k1MXnRRRKc9+mSTBNjI/U5e8cZhJWYiqezDfERe8Xch1klG5Wxg0EJUTUfc/leT
         Y+DeGlgm5OdrOzvEOYFeW52TScCsa2OhBRdu2HO7iB30oEQ5AVEQYxy3T0gLQjmHYxt1
         sOQG0+dfpF3Rk2car7PR5ww0shirDjZv5lB1Ey9VzT5Q4E6O3vyC+Fs7dsgB9QDYDfX3
         fI3A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531duy5Tt3poSf3N8xVuyId8YiRSDXNXQb0N5zira28YH4OTZcvw
	VREJY0JQ0LlYmF6zYGPII94=
X-Google-Smtp-Source: ABdhPJx37+Xn9GUh1mz1YCYA8nSOa8MiNah5BXKtMfXvqyy5lnKn4EWU44OnGg7stalF0Jzds/Mn6w==
X-Received: by 2002:a7b:cf35:: with SMTP id m21mr3762805wmg.181.1591270879864;
        Thu, 04 Jun 2020 04:41:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:a70e:: with SMTP id q14ls2697640wme.0.gmail; Thu, 04 Jun
 2020 04:41:19 -0700 (PDT)
X-Received: by 2002:a1c:2bc2:: with SMTP id r185mr3894660wmr.49.1591270879240;
        Thu, 04 Jun 2020 04:41:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591270879; cv=none;
        d=google.com; s=arc-20160816;
        b=vLNNn4CiwBhQgOxynOAV1MNY4bNf+e9T2KUDtRnDD2iV5TZv3Lc/WDF52+g5Xoc205
         Ethh8BSjaS9Sf6LkBKT/LIljsaexKb2J6IoJJRzdWMmr/wEqu7GO6s+NRWkwxf1G5w6n
         wUcr6pdV6E3KHlxxobDL8nHaNugKIVnHTZ+KjGrrn+hCI+euAkCCyeWnZKcBy5ktECk8
         zKdveYtfvnXOyKZ6LTLBWOggYFNeWWdCvytx4GKlVR/y2L0dkywP6RTp9olGLaaEArNK
         rbYFHXLA6/LmfS/UrQZdnDpjY8sKNje6NOPY65COjR9ho8mRbzqEpXGb/yA8CZpvOrm/
         Zl6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=R0o4OOvzJQjARhQ6/49UmmkOyadJDn2uKBj3nrOAqQo=;
        b=c7Ibmww0MD5huAwCfJtuBOUACm4FpdsgaQ+SHDiIlVKpB1/6VSOX6hTbJ1vLq85TNp
         kLXqzf987l2u/kln2Oa2oEA8HpF/iua60vwqc4iVL2a8cBh4UZ5HnQEVIYU6551+7Fno
         iIPR4lZK+0jmjHrrhrNdqrvhsj6B+qTsqg59JeWeWOseRCEba1JYDXRHOSWtqou7v/kU
         deISI8NRxDjzb5FkCE4Ki6pWFYuj5RklW532hh8xbH/7omxinu8OWuIXIP1GC3BMJiIG
         P4OfTk/SRg1BMn/2zOxmema52CWd9z78njKQJ03J8G4wyumvx5vLojfBT+vBAUBPj8s9
         RzSw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uOadSoLG;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::241 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lj1-x241.google.com (mail-lj1-x241.google.com. [2a00:1450:4864:20::241])
        by gmr-mx.google.com with ESMTPS id z18si293812wml.2.2020.06.04.04.41.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Jun 2020 04:41:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::241 as permitted sender) client-ip=2a00:1450:4864:20::241;
Received: by mail-lj1-x241.google.com with SMTP id 9so6828394ljc.8
        for <clang-built-linux@googlegroups.com>; Thu, 04 Jun 2020 04:41:19 -0700 (PDT)
X-Received: by 2002:a05:651c:11c7:: with SMTP id z7mr2085283ljo.29.1591270878905;
 Thu, 04 Jun 2020 04:41:18 -0700 (PDT)
MIME-Version: 1.0
References: <20200603233203.1695403-2-keescook@chromium.org> <874krr8dps.fsf@nanos.tec.linutronix.de>
In-Reply-To: <874krr8dps.fsf@nanos.tec.linutronix.de>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Thu, 4 Jun 2020 13:41:07 +0200
Message-ID: <CANiq72kLqvriYmMkdD3yU+xJwbn-68Eiu-fTNtC+Lb+1ZRM75g@mail.gmail.com>
Subject: Re: [PATCH 01/10] x86/mm/numa: Remove uninitialized_var() usage
To: Thomas Gleixner <tglx@linutronix.de>
Cc: Kees Cook <keescook@chromium.org>, linux-kernel <linux-kernel@vger.kernel.org>, 
	Linus Torvalds <torvalds@linux-foundation.org>, Alexander Potapenko <glider@google.com>, 
	Joe Perches <joe@perches.com>, Andy Whitcroft <apw@canonical.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, drbd-dev@lists.linbit.com, linux-block@vger.kernel.org, 
	b43-dev@lists.infradead.org, Network Development <netdev@vger.kernel.org>, 
	linux-wireless <linux-wireless@vger.kernel.org>, linux-ide@vger.kernel.org, 
	linux-clk@vger.kernel.org, linux-spi@vger.kernel.org, 
	Linux-MM <linux-mm@kvack.org>, clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=uOadSoLG;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2a00:1450:4864:20::241 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Thu, Jun 4, 2020 at 9:58 AM Thomas Gleixner <tglx@linutronix.de> wrote:
>
> but if we ever lose the 1 then the above will silently compile the code
> within the IS_ENABLED() section out.

Yeah, I believe `IS_ENABLED()` is only meant for Kconfig symbols, not
macro defs in general. A better option would be `__is_defined()` which
works for defined-to-nothing too.

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72kLqvriYmMkdD3yU%2BxJwbn-68Eiu-fTNtC%2BLb%2B1ZRM75g%40mail.gmail.com.
