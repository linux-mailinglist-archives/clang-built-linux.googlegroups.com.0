Return-Path: <clang-built-linux+bncBDPL7R4J6AKRBG4R4GDQMGQEZE4PGYI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x438.google.com (mail-wr1-x438.google.com [IPv6:2a00:1450:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 824CA3D13AD
	for <lists+clang-built-linux@lfdr.de>; Wed, 21 Jul 2021 18:17:32 +0200 (CEST)
Received: by mail-wr1-x438.google.com with SMTP id 32-20020adf82a30000b029013b21c75294sf1202946wrc.14
        for <lists+clang-built-linux@lfdr.de>; Wed, 21 Jul 2021 09:17:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626884252; cv=pass;
        d=google.com; s=arc-20160816;
        b=LeZqq1Zdy4kb2w11rl2/nt4xfM4zCZM9nDXOdfwXY02LIlqBwwfw/Td8OPTXldPmC1
         kRp9f4DgxFe3p7+KoCh2VA/AEsTyBFqwQer3yWKanvSzk2cyfxub38fWVEHr4D9yN0Lg
         Xc2JnZaETVp5vpLCCYo91mSmH22fzBlbgdHza+DApNjiDN2a/290KsSU3vAhA9ZsX4SI
         BnenaMt1MOsEZIhzR1T8i3CtIGXOl/CCiHOA+/kZtM/Kx+GoPPMGEXkC1EaznzNKD+y2
         GcuJD54jCqjLH8riBu7BJQzN3lQPJFMc2eRLWbhGsJ1b2iFcuYb7p4kYqaTV6bjKjp5B
         eltg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=ukdc/veGDbagC5snebtYUiD+Nhkc2HooEP3MZzSzyvU=;
        b=vYsFSCDT59CY4j8h+JIiX2zZUEksxAXNFaJbSWKWgQ3OJ0CJF+EkYx8JUjpiaNzm2S
         24umy0lqPeLzz47UDiNQxc3jSSuRsWJczKOjnN1y+QzSSQZgs3XMHT+sNEvMQR9Ffjqr
         bKtOiSOWKs+EwD30PrFZXBexW+pI+DCG0t7MVtWRujPX9+CzIIUUocAeaO4gPTLQZT+m
         X9Z6XTy9ri2wO8AnhMUq59gsViS6az6HgaZLuYRtLmBPel/ZL0cfJ0XdViRhFJBaOSJ6
         yZRadkfnMvoxQsLvN2itZoO+FkYOkrMB4BZhQGz6Y1Xxgcvir1MeIklmO4JjQV7MM6Qn
         JCZA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tsbogend@alpha.franken.de designates 193.175.24.41 as permitted sender) smtp.mailfrom=tsbogend@alpha.franken.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ukdc/veGDbagC5snebtYUiD+Nhkc2HooEP3MZzSzyvU=;
        b=GsdnEnMW6VX+j/SmhppJqubvWnwGGjC2VN9XNCmvY0K9053ZO3AjR54Gk0nW/y3DVt
         QcOgYXooVs5658m14nBVwFBtwrxgvbINrVNPv23vJP9GhWcLpNDYt81vRg/dQDGYDdKp
         gqyjGEOLQ7bIhBHMzMVFIPBSz0IUs80iVyoLZTSUujeEBatL9Aq9t+kXlquZqDc3zNrX
         B3+zEXuGuY8VT8zUgNI/HMiXysgWpCYNWY2irf6SQQ4FAY9e6vi2psUwKvPAzRS4Du3s
         5KKELZRhOMWYZDv3jpPtYaqwMlMbfA/08hBxCzJV11c1AxTXG0A6BoTDFnFU+626Trx6
         Vldw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ukdc/veGDbagC5snebtYUiD+Nhkc2HooEP3MZzSzyvU=;
        b=G+GJKhR6RAaX43TODRQL0zfu1eGodRJXPP4d4lLPlWUoyw9x1EvLh6dwyK6bpJEPd4
         kPOg8nxMhPLY1gjo0dLZcjzOPIcsN6mZd1YKuAery9K3Kmo7zu3E1cxg0jNTcZJNSqca
         MjWbbomZFOd7u+92UX7KYFDxWOyYGHM+EsmmrOCOULB6MCNTHEj1vvdWHZ76uv0K67uy
         Ag60cGh5WR4IpcIoNHDNqOBnjNp9X7rFUDoMnqHw9zm0xkrELyQjPw9HG1cQd+Cg1egl
         Vade/09fFbs4RrHeo6cfUT0hZWub9vFv2082Oi2tIvcge7F3ruBkkYGfa3Nlq5aQVqrY
         IaRA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533kJZ9rjrTCMrx6r9VFsrhmQ7sEYi1ePhooKaO0sR4470Dd7+2Z
	XtyJMPwd2RkY1YC004pJyr4=
X-Google-Smtp-Source: ABdhPJyXZcklVq0lUSIfDTDP2O0tmv/2s4uWPcvt4hdVXLxmcc4tx1mhYZPbFADYRkmn/CochHePag==
X-Received: by 2002:a5d:64c2:: with SMTP id f2mr43611487wri.374.1626884252318;
        Wed, 21 Jul 2021 09:17:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:1554:: with SMTP id f20ls1313862wmg.0.gmail; Wed,
 21 Jul 2021 09:17:31 -0700 (PDT)
X-Received: by 2002:a05:600c:3b0a:: with SMTP id m10mr37727029wms.79.1626884251300;
        Wed, 21 Jul 2021 09:17:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626884251; cv=none;
        d=google.com; s=arc-20160816;
        b=szVxvuxzg06ldQwpznddX3GwyssDQvQIVuPv79m2E96mlgP8WexqGES8dSJoirviti
         L8j7VFdw+FOYKzZRrLc0RkbDwpD7Mcmx8MzTkVWWczcfntPaU1ZWaVq8IrnMZa/VF7fv
         iFgDS7DNB0x/QxuAhCifnLL0JCHrW1ylMkW9qI5EENsmXGEDDRuBiGBIl04/tsd0EqTm
         gJYQc+JE2vvEemUGT58j692a7L71Ypjz0UjkRzHzGhENwrBLWw1wbsQj3JBxjhaD4u4d
         ktLpWA4zml77azYtmtLH0O6ONZFrr+niSMAski7ZnVFrH2sWM3ced5GF2Zd/uKg/xOxo
         WcbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=aomwzWvR2+CkZCmlVwrfIFKB9ry1FUBpUqR6dfbhD+c=;
        b=NZdD0/a+d0855YeU2nkjvPUYxvxoUtXkiMfGasv1zhwAjxk7X5KaUiqoY6HRPgENcF
         p1GS/rQbBkDl14efi2BCOmPtADNSh3VeEAuZeIZZ1dQQt6NLK16tQokk+M3zMZHYvNhV
         /VpnWGLSu0gT8QQBaerlgZhIAXOs5YOcxJce7wXDUdLxm1pCLTI0fjFv4uXK7nj3RNyX
         lr7TYZZnOtfsOiijZR/rRUe3nnmvqEqq7opfQRTmGs2oI9r08qzAiXB0Ttm7M67S0IHJ
         gI/B9i0BGB/HpRN+HZLcBLSTQWXNI9sDMFp4HY1hFi3yVnM59VcP9WkTFBDI762Xt0Ak
         dWXw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tsbogend@alpha.franken.de designates 193.175.24.41 as permitted sender) smtp.mailfrom=tsbogend@alpha.franken.de
Received: from elvis.franken.de (elvis.franken.de. [193.175.24.41])
        by gmr-mx.google.com with ESMTP id v4si1195554wrg.2.2021.07.21.09.17.31
        for <clang-built-linux@googlegroups.com>;
        Wed, 21 Jul 2021 09:17:31 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of tsbogend@alpha.franken.de designates 193.175.24.41 as permitted sender) client-ip=193.175.24.41;
Received: from uucp (helo=alpha)
	by elvis.franken.de with local-bsmtp (Exim 3.36 #1)
	id 1m6EuY-00011A-00; Wed, 21 Jul 2021 18:17:30 +0200
Received: by alpha.franken.de (Postfix, from userid 1000)
	id 29583C0EF7; Wed, 21 Jul 2021 18:17:19 +0200 (CEST)
Date: Wed, 21 Jul 2021 18:17:19 +0200
From: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
To: Paul Cercueil <paul@crapouillou.net>
Cc: Nick Desaulniers <ndesaulniers@google.com>, linux-mips@vger.kernel.org,
	linux-kernel@vger.kernel.org, list@opendingux.net,
	Kees Cook <keescook@chromium.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] MIPS: Avoid macro redefinitions
Message-ID: <20210721161719.GA9805@alpha.franken.de>
References: <20210718130748.230758-1-paul@crapouillou.net>
 <CAKwvOdkVEa-CxbVschn5Tnh7-Ynvzcz+zChhP3LL3Q745wE7_A@mail.gmail.com>
 <7YIIWQ.1TU3IBLL4KNC2@crapouillou.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <7YIIWQ.1TU3IBLL4KNC2@crapouillou.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: tsbogend@alpha.franken.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of tsbogend@alpha.franken.de
 designates 193.175.24.41 as permitted sender) smtp.mailfrom=tsbogend@alpha.franken.de
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

On Mon, Jul 19, 2021 at 11:10:55PM +0100, Paul Cercueil wrote:
> > >   #ifndef TOOLCHAIN_SUPPORTS_VIRT
> > 
> > Same question for GAS version support for virt?
> > Documentation/process/changes.rst
> > says GNU binutils 2.23+ is required for building the kernel.
> > If we still need to support, have you tested this change on such an
> > older version of GNU binutils?
> 
> I have no idea about virt support - I hope Thomas can answer this.

virt support was added in 2.24 and xpa in 2.25. So we still need the
TOOLCHAIN defines for it.

Thomas.

-- 
Crap can work. Given enough thrust pigs will fly, but it's not necessarily a
good idea.                                                [ RFC1925, 2.3 ]

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210721161719.GA9805%40alpha.franken.de.
