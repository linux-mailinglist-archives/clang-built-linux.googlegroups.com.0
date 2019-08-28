Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBSFUTLVQKGQEY3ED3MY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73c.google.com (mail-qk1-x73c.google.com [IPv6:2607:f8b0:4864:20::73c])
	by mail.lfdr.de (Postfix) with ESMTPS id 36227A05D9
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Aug 2019 17:14:17 +0200 (CEST)
Received: by mail-qk1-x73c.google.com with SMTP id m6sf332908qki.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Aug 2019 08:14:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567005256; cv=pass;
        d=google.com; s=arc-20160816;
        b=KHmkLWier9nWpodg9BfDl7NcQxOcxy+lMlkZKmWnwpfwdpJP9S1X8VVIlN1dsq2E/M
         3Mq2m9xJJhtUuOOorsHWMMPxiuCOdjK5zXL0Biq2nRlFtN73Bq1jfOz3+M4Hm2YWMVNh
         FyZOL/eBY/bn7HGaxqouYcpPEsz3L6fW+RI0wj1CE5HuAbdpt26nrgfY6XoPJL7N14ub
         a81BZ6jdv+XnlQdSEs1t3JC8wEHSo3a3oATV8o0PCtyiNL1g4FjS9sI7j4r81C6aAevE
         QrEQcTptsqR8hoR8s2MDuR9MQ08vdU4OU1oT30UOp9d65ShVQ1v7DS6A1+7uVA6q8QYU
         oPzA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=l4Qq6y0amm+WsZJgTqfsnjUpaQZC7fUHfgPaf2cbvYY=;
        b=TFjEqulceLjKtQBXpkutwpRj8Irv8BMd9r24WWP1ZxLJ+1t8S4O5ATcv8G4fbRXcOE
         a9IC04zgKEJYx5nke8UGwukFlBNwARLzziSPp+BOBfGpBRW3wgk2viN37I53tRxQqyvx
         3Lo3xsgj87Zrbxp8EWm+1rOshytsg6xbCzfSL/k3bqwUst/7dMblxdavRvqwqc5uXkxN
         6ohhyy9D/p2ncJ0aRAjryEyNg0OwA62IR5rgn6dfm0hNw2Vzzh5xsM3VdgactqtMfe5j
         Qzcinuzp2Tm/9ueVxZiPaHTpL36P6gg7gC56rpx5qag4QRhnLa/xlAQAtldoAe3U/NYl
         hGtA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of arndbergmann@gmail.com designates 209.85.222.193 as permitted sender) smtp.mailfrom=arndbergmann@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=l4Qq6y0amm+WsZJgTqfsnjUpaQZC7fUHfgPaf2cbvYY=;
        b=RRENGkfp63zkUROoTcU9J5rbLKMDWbmQdmpr9ioLyseQyGVouqhQsrU2KFaxzKjebQ
         6IBU8fBk/UtDAEmsKolvPYMgqpdC8a2eEAIX5/6Q2oTG9RYlX5Ay1sbMEJtTLjhgFDCL
         /OH6pnFqw0gtWy6IHI1J7tbA7CqPcAHhZ7tD6wzpByfZT1Oa3ZEHX9xxlif7acmwsBQx
         6vSubytzaw0qoO7qSgxMtNwrTzNMJxh/dJH2TItHBcUw+oNSLrOH3Z+M7kxUSqcYF2wV
         irSS2XBlYEZGs+SZP9Ma9aDxlYLshkYSkJkhkvBLD2jvrR62w+IUppSnO5dH2K29ukTY
         kVYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=l4Qq6y0amm+WsZJgTqfsnjUpaQZC7fUHfgPaf2cbvYY=;
        b=BNTKcW3lNlOztWzhTgPlidU3Uu/Uqg8cgc71hceLWtYmwxxB2DsLjVaQm/wDDOzSob
         Mi0dkIukjqUgYFo7FeQykOTpb+pdtIwvDhaEbgAcciZ3vEiC6cewYVHXdUwCSk5O0nCq
         ArkGqHw2PGqgjCYUQrwfc12SB+hZPsL0kAJrb8RY6mEwhrDCMvMm+/BlKKs2u6P3I71a
         a80K05w1Rt0Ed2rgOVEwvB3TeC8SckBj8ZlkrcDnk6+2N9ObRBitTs5UpIp+tf96FS0h
         PCRZ3MIYRr/5hs5eNI7zJDoZe+jQSPC0PfbruPMYsCUkc5ELzt7LprlbTqefGHyhB63N
         hwFw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVXPczNR/AyFlQrYBEl9u4MXplvuCchYmVcGjfyxymMgv2pAmWN
	AOXHG/fW67CR+LoLnsTegsA=
X-Google-Smtp-Source: APXvYqzNc8vAt8V7RT4QfxSPe4CJKD+Xq/53Qcd52RX3TRbCXeNUR3+wqQJuIcnAgBzugINTExr1+w==
X-Received: by 2002:a37:8ec7:: with SMTP id q190mr3770466qkd.157.1567005256139;
        Wed, 28 Aug 2019 08:14:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:129b:: with SMTP id w27ls1241852qki.1.gmail; Wed,
 28 Aug 2019 08:14:15 -0700 (PDT)
X-Received: by 2002:a37:6c8:: with SMTP id 191mr4592355qkg.102.1567005255762;
        Wed, 28 Aug 2019 08:14:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567005255; cv=none;
        d=google.com; s=arc-20160816;
        b=u4T+NlJfkl4o3GBQQdXHB0rDD46LJruCR6bbmcvONJAaemdi3Hbh4zGl8CxHuGyWxO
         F1Bn5+XavVWqA/kpBQABQ8kTQgXs9egeVOB3KzbocUY9sNjQdzMoLrtPxIhN56DpzZ9t
         u8adHGgPaL2aqodMvmD3kmitGfDxE5bDKRJFtS4t7Ny2PkqDkJdWAhZZHMJspYSHNEXp
         LjUSLoJhPozANULoVc9z+fA3GUKqpMqYKrGuivZSD+SLMFlUX9o3eOLFOoAI0JVT9lpx
         JsNziT0ppJn3jZP8x8t8lbAO55W2P+SAQPP0OG9I/nhURHjsJEaoG3PY9KId09ATMtis
         zcWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=QQzVgkGastCCZFbFZ7g9sQmtqjgZSo1pYtQrF34ax5w=;
        b=YPRKwAEH6GjsRy+t0XGwYdRwxyTzF/8lC95VbEqrfWbZo95xvvBX6lbdzVYfMhoYXf
         whKwqzh0BA2JOieKg9cuPomLOKurPZVm0Y3MvF5PWAwNE7IIg2mydUDI+XiUn8ROK/Av
         5fpZglFpQL9xSrPdjor89Zr4AmHcDL1Xs9g+Em80B7ohzVxc5O/QTdoA/0qwh0u7pbRl
         YnBY6yzdXA17CLkQOW8YQe3H0vIeaMEPbIz5pZaSp+P72rWOLtHK8+2aKI7f9pRI7++G
         VBH1aWzPb2+C/SjIotZIIQgDGenSIhcPnto+7EJnfCrCLs3a7pVo6oXkUAYHkzd7DV/D
         2olg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of arndbergmann@gmail.com designates 209.85.222.193 as permitted sender) smtp.mailfrom=arndbergmann@gmail.com
Received: from mail-qk1-f193.google.com (mail-qk1-f193.google.com. [209.85.222.193])
        by gmr-mx.google.com with ESMTPS id j23si154188qkg.2.2019.08.28.08.14.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Aug 2019 08:14:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of arndbergmann@gmail.com designates 209.85.222.193 as permitted sender) client-ip=209.85.222.193;
Received: by mail-qk1-f193.google.com with SMTP id m2so29857qkd.10
        for <clang-built-linux@googlegroups.com>; Wed, 28 Aug 2019 08:14:15 -0700 (PDT)
X-Received: by 2002:a37:4fcf:: with SMTP id d198mr4454519qkb.394.1567005255266;
 Wed, 28 Aug 2019 08:14:15 -0700 (PDT)
MIME-Version: 1.0
References: <CAK8P3a3G=GCpLtNztuoLR4BuugAB=zpa_Jrz5BSft6Yj-nok1g@mail.gmail.com>
 <20190827145102.p7lmkpytf3mngxbj@treble> <CAHFW8PRsmmCR6TWoXpQ9gyTA7azX9YOerPErCMggcQX-=fAqng@mail.gmail.com>
 <CAK8P3a2TeaMc_tWzzjuqO-eQjZwJdpbR1yH8yzSQbbVKdWCwSg@mail.gmail.com>
 <20190827192255.wbyn732llzckmqmq@treble> <CAK8P3a2DWh54eroBLXo+sPgJc95aAMRWdLB2n-pANss1RbLiBw@mail.gmail.com>
 <CAKwvOdnD1mEd-G9sWBtnzfe9oGTeZYws6zNJA7opS69DN08jPg@mail.gmail.com> <CAK8P3a0nJL+3hxR0U9kT_9Y4E86tofkOnVzNTEvAkhOFxOEA3Q@mail.gmail.com>
In-Reply-To: <CAK8P3a0nJL+3hxR0U9kT_9Y4E86tofkOnVzNTEvAkhOFxOEA3Q@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 28 Aug 2019 17:13:59 +0200
Message-ID: <CAK8P3a0bY9QfamCveE3P4H+Nrs1e6CTqWVgiY+MCd9hJmgMQZg@mail.gmail.com>
Subject: Re: objtool warning "uses BP as a scratch register" with clang-9
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Josh Poimboeuf <jpoimboe@redhat.com>, Ilie Halip <ilie.halip@gmail.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of arndbergmann@gmail.com designates 209.85.222.193 as
 permitted sender) smtp.mailfrom=arndbergmann@gmail.com
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

On Wed, Aug 28, 2019 at 11:00 AM Arnd Bergmann <arnd@arndb.de> wrote:
> On Tue, Aug 27, 2019 at 11:22 PM 'Nick Desaulniers' via Clang Built Linux <clang-built-linux@googlegroups.com> wrote:
I figured this one out as well:

> http://paste.ubuntu.com/p/XjdDsypRxX/
> 0x5BA1B7A1:arch/x86/ia32/ia32_signal.o: warning: objtool:
> ia32_setup_rt_frame()+0x238: call to memset() with UACCESS enabled
> 0x5BA1B7A1:arch/x86/kernel/signal.o: warning: objtool:
> __setup_rt_frame()+0x5b8: call to memset() with UACCESS enabled

When CONFIG_KASAN is set, clang decides to use memset() to set
the first two struct members in this function:

 static inline void sas_ss_reset(struct task_struct *p)
 {
        p->sas_ss_sp = 0;
        p->sas_ss_size = 0;
        p->sas_ss_flags = SS_DISABLE;
 }

and that is called from save_altstack_ex(). Adding a barrier() after
the sas_ss_sp() works around the issue, but is certainly not the
best solution. Any other ideas?

       Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a0bY9QfamCveE3P4H%2BNrs1e6CTqWVgiY%2BMCd9hJmgMQZg%40mail.gmail.com.
