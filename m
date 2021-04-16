Return-Path: <clang-built-linux+bncBDBLP5PQSQLRB7VC4WBQMGQEDWB57OQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3b.google.com (mail-io1-xd3b.google.com [IPv6:2607:f8b0:4864:20::d3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EBB0361BC0
	for <lists+clang-built-linux@lfdr.de>; Fri, 16 Apr 2021 10:57:35 +0200 (CEST)
Received: by mail-io1-xd3b.google.com with SMTP id e18-20020a6bf1120000b02903e88ed09a1fsf3659317iog.14
        for <lists+clang-built-linux@lfdr.de>; Fri, 16 Apr 2021 01:57:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618563454; cv=pass;
        d=google.com; s=arc-20160816;
        b=z49W7J8t42w51JlXaS80uNzLaeSv70JglUrV3NIxB48Q3YPksLcoDwLHr9DYtHs5ca
         SyKXHYNtIe4VbBUlPGHLUb1parVluSZrb8X6bZ0Q1HOhJphC1cEJdKQQjFAJzT6XcjHq
         WsUwztKcPjE/HPR6uNcYJFT39Vk94dWVOzjEXAlE8eOEeDEj6muhyuZXO8c5et7zs0JO
         pmP29/H0yR/8chqSgxmS474y5HcRzm95FjwEXPeL46+XkbhKz0r/+cjjTduFtpmOOb7H
         p4nNFRSCKVb5nqUYq47Jg9IuFWQQrcMbcl6lnvr8Ki3FQmGgiEKqn+7cLynW2rbH+8bz
         1mPw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=agmXXcUlbYFM8Ws6kWXWs/pHlae+nGGrpUGjqekFszM=;
        b=FMWh/biL1h6VX7UhZ6fyqn+b9CuPMS29JcH0fAjj1pFGtChugwd4yd1NdyrOjv4mK+
         4w8tAs1PeQbohje/YbKLndzyiSqfggef1UpKkkkOWqZmGn54d0wKiGu6bAn+PxlZPcd5
         bLmudQ8+BJWrkgmIhVUS5CfmBkYR4oUyX8r3B+HjlESbHi7SsmxI/RhqmUbr9VWi9LNJ
         erfdL7BQeT0gC8KSYrCL5gg60GhY2SMI0wopDsQR0ufU9n6vWQCblXGRbePRbbWDETjk
         AJ1M2P3TZYY0mTDB7dA2HN5xygqj8CcMoRKRxXrwPqBIkeLm73PsmYJ5gd3sK0iJReL1
         g1sA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fhGyue5C;
       spf=pass (google.com: domain of dillon.minfei@gmail.com designates 2607:f8b0:4864:20::12c as permitted sender) smtp.mailfrom=dillon.minfei@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=agmXXcUlbYFM8Ws6kWXWs/pHlae+nGGrpUGjqekFszM=;
        b=gttoB8nDSfnOkebw5FSb8CpXyq/HAE2tMfjQSXj+AqjgpriabgKG9hZPqAtFJ7hvKL
         FYmZbkasTJhg6Ewot3tJparE1OnmOY6vhn6cHtrk+1aWdAiK+uGt8LOoDxtKrJnmuxSd
         tlpf5ftZBXqCOk7aXmsOThY9arQUxrkveSs7PLQohmdC67veON8kglpCdaPzdClHoXdr
         EfY/S/z6nZ+Y+5Q2DvSgGx6YT9kNniz4z6qcKL+Z2u+VbsDOIP7lGP2+okY/JpKfB5Va
         xHmlnjHdONo2p8A08ixbWh618U7j26oxannR/eXTR0BNQ0FpR7oUJqLijXzg7pi0WE5W
         OmlQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=agmXXcUlbYFM8Ws6kWXWs/pHlae+nGGrpUGjqekFszM=;
        b=KLNPEVvPEJT+BDNbXzsbbBAGb+7ZHTS+99ryTKGwNRja6WVXcJu/KGgGM8SoWBI/ts
         oLzoq4AHya2kXz/T9nGgQBNscX9wNvjJLY6kQg94S3NK2ThZztXEL5GMLG8RoO0CWUEy
         VNyapm7aoR4Lc/7HVmi8TUSIuLNzSnxs4BTT06iilRZC4oD12qRv5Jfs5ADBvUzCKHSc
         JPJfI92NrrNSYlhcazXLsHsYC2V0iESnl+qucC86zzxNSdLxx9LbZi7ogYqR1ML0vxEQ
         TPGmqjV5AMjaVK8fDAJi5j2aE1QgKRKSOfv+hjnorFAbK3HQqOjGbR4yKwwCPrXLalIN
         150A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=agmXXcUlbYFM8Ws6kWXWs/pHlae+nGGrpUGjqekFszM=;
        b=If4iDgcM5iGbrcmUHY1bJh2LH4yri7VTt1WxWRJE3CjSZx3Ods/hFOap2h8dfJ+mST
         q3VoOck0aMG6SXalSuN/JCJlQp1HzEIauD9K5JkwKynLiFL4TAA2DU5z39S8VLazPe2p
         YCj/y95yzLry2Y+mrvl12LL3baJhWYGn9PK81J+Pc51SEzwBkB02mCRxFXoVK9oFjQp2
         B0UaN79g5YiumQsFcRKFrwKOpaCvqEY4ZCSjQ+EDfich/oR6CXwa3CGv3aAooi6N6x1p
         qI6T/hOCabQfSTn7tTR7LGoF807+o9FIuXxj8Dxc53iBUzGe4PPtlnI0YhwadmymoSCE
         4wKA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531pD8zhNhekhmPCGugucg04N8BHbHJhEokkf1y4+dYe17fWSbOh
	ppw46W7VbBwo+KqzWpzHyJc=
X-Google-Smtp-Source: ABdhPJwQd2QR/MbVxKYKLs9w5A1+K50BdsGyND+koY1NqMBNotwYdOjhvPqVjRlTJJShwDmB3QEoZw==
X-Received: by 2002:a92:1943:: with SMTP id e3mr6000518ilm.166.1618563454445;
        Fri, 16 Apr 2021 01:57:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:1888:: with SMTP id o8ls2116110ilu.4.gmail; Fri, 16
 Apr 2021 01:57:34 -0700 (PDT)
X-Received: by 2002:a92:1910:: with SMTP id 16mr6012620ilz.201.1618563454095;
        Fri, 16 Apr 2021 01:57:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618563454; cv=none;
        d=google.com; s=arc-20160816;
        b=dJx0RUbKj2qTHafTgB/3d00/KA7uWKyqjI633fc3LIh5xC1s1PneC+95hF3h4OSuGl
         5vqTXE61C1X4e+6P4KvTY3qQAgzl7UZiSn4FwV5M0FmMdjTFbB2DyqzB6yz8pzxpoatw
         e6gryBVG40HZM+a8CvQo9IvSt5yOYyIsY8w+o9IfXWU/YiuOQ879I6QyvLBsX9Hm6PJG
         5TXXqAznQCJfiAG+7f0UlnF0Y3F25ED6jzoCUMOTAhbpvKd8Jzl3TnmpvR6KL3iificz
         xjefGUwuSrsEifTc3D2mAIFdzyWlBY9jKIQXKWJBFSkycLK2tUUUqb2foIqEhU1VsO7z
         pKPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=M41GXL+PjIBxhmb0o54t+3XJBKJFPW9+U1USw54R9hY=;
        b=Aq75HtLudgdWmnOoHmbHlLnXlHaposnThKIwqaUL/woXVFI/SalHACZYavWr9SbC5L
         cuBcw1mad8WSGh0K+f7/YQcHGe1lx3dgsD9wC0ckEbL+BAop2mV5OzlT+lzjJR7ELvtP
         a1lXUKme57ez8TRhbfVWQWNSSctdLasm6gHvI1cxCn4oiQ9J8ZBCEONDRT/deF8c3SGP
         ue7wT5k2mOBI6r7X3cyi6L1QY4YPfxxNdPilrvwDKnhmKpZxpjXWYpyazEcxNV4KWIdx
         i9aDgFPjmv/oIk+aChFM1kLnU5i9ZDlALs99vEhqxiMPmHMECMfUGZttpbzVIRQmvRJd
         uCZA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fhGyue5C;
       spf=pass (google.com: domain of dillon.minfei@gmail.com designates 2607:f8b0:4864:20::12c as permitted sender) smtp.mailfrom=dillon.minfei@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x12c.google.com (mail-il1-x12c.google.com. [2607:f8b0:4864:20::12c])
        by gmr-mx.google.com with ESMTPS id y8si324236iom.1.2021.04.16.01.57.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Apr 2021 01:57:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of dillon.minfei@gmail.com designates 2607:f8b0:4864:20::12c as permitted sender) client-ip=2607:f8b0:4864:20::12c;
Received: by mail-il1-x12c.google.com with SMTP id p15so11604954iln.3
        for <clang-built-linux@googlegroups.com>; Fri, 16 Apr 2021 01:57:34 -0700 (PDT)
X-Received: by 2002:a05:6e02:684:: with SMTP id o4mr6180647ils.218.1618563453889;
 Fri, 16 Apr 2021 01:57:33 -0700 (PDT)
MIME-Version: 1.0
References: <1618219898-4600-1-git-send-email-dillon.minfei@gmail.com>
 <YHRGPpQ03XgBMkiy@hovoldconsulting.com> <CAL9mu0JF-9hy3Z_ytpEO+hzKh0D+f-0gYaUBEA0v28EOHpC80w@mail.gmail.com>
 <CAL9mu0Ke97FUZ03jvdH8Lz2qRnVY82B7tAEtjbhW97sPOVkAxQ@mail.gmail.com> <YHlMYZCCxL+SS9ye@hovoldconsulting.com>
In-Reply-To: <YHlMYZCCxL+SS9ye@hovoldconsulting.com>
From: dillon min <dillon.minfei@gmail.com>
Date: Fri, 16 Apr 2021 16:56:57 +0800
Message-ID: <CAL9mu0K4L-vGL1EyYc+p0q7tadQ39-VHcp1nd4gZs_HGKSmP2w@mail.gmail.com>
Subject: Re: [PATCH v2] serial: stm32: optimize spin lock usage
To: Johan Hovold <johan@kernel.org>
Cc: Greg KH <gregkh@linuxfoundation.org>, jirislaby@kernel.org, 
	Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre TORGUE <alexandre.torgue@foss.st.com>, 
	kernel test robot <lkp@intel.com>, linux-serial@vger.kernel.org, 
	linux-stm32@st-md-mailman.stormreply.com, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, kbuild-all@lists.01.org, 
	clang-built-linux@googlegroups.com, Gerald Baeza <gerald.baeza@foss.st.com>, 
	Erwan Le Ray <erwan.leray@foss.st.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dillon.minfei@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=fhGyue5C;       spf=pass
 (google.com: domain of dillon.minfei@gmail.com designates 2607:f8b0:4864:20::12c
 as permitted sender) smtp.mailfrom=dillon.minfei@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Hi Johan,

On Fri, Apr 16, 2021 at 4:35 PM Johan Hovold <johan@kernel.org> wrote:
>
> On Tue, Apr 13, 2021 at 07:44:39AM +0800, dillon min wrote:
> > Hi Johan, Erwan
> >
> > It seems still a bit of a problem in the current version, not deadlock
> > but access register at the same time.
> >
> > For driver , we should consider it running under smp, let's think
> > about it for this case:
> >
> > static void stm32_usart_console_write(struct console *co, const char *s,
> >                                       unsigned int cnt)
> > {
> >          .....
> >          local_irq_save(flags);
> >          if (port->sysrq)
> >                     locked = 0;
> >          .....
> >          access register cr1, tdr, isr
> >          .....
> >
> >          local_irq_restore(flags);
> > }
> >
> > if port->sysrq is 1, stm32_usart_console_write() just disable local
> > irq response by local_irq_save(), at the time of access register cr1,
> > tdr, isr. an TXE interrupt raised, for other cores(I know stm32
> > mpu/mcu do not have multi cores, just assume it has), it still has a
> > chance to handle interrupt.  Then there is no lock to protect the uart
> > register.
>
> Right, the sysrq handling is a bit of a hack.
>
> > changes to below, should be more safe:
> >
> > .....
> > if (port->sysrq || oops_in_progress)
> >       locked = spin_trylock_irqsave(&port->lock, flags);
>
> Except that the lock debugging code would detect the attempt at
> recursive locking here and complain loudly on UP.
>
> If you really want to fix this, we have uart_unlock_and_check_sysrq()
> which can be used to defer sysrq processing until the interrupt handler
> has released the lock.

Great, uart_unlock_and_check_sysrq() is fit to fix this. you mean make
the flow like below:

    stm32_usart_threaded_interrupt()
      spin_lock(&port->lock);
      uart_unlock_and_check_sysrq(port, flags);
      ...
      uart_prepare_sysrq_char();
          printk();
            stm32_usart_console_write();
              locked = spin_trylock_irqsave(&port->lock); //only
handle oops, normal case

If so, I will submit v3 as you suggested. thanks.

Best regards.
Dillon,
>
> > else
> >       spin_lock_irqsave(&port->lock, flags);
> >
> > ....
> >
> > if (locked)
> >      spin_unlock_irqrestore(&port->lock, flags);
>
> Johan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAL9mu0K4L-vGL1EyYc%2Bp0q7tadQ39-VHcp1nd4gZs_HGKSmP2w%40mail.gmail.com.
