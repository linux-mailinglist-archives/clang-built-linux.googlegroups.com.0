Return-Path: <clang-built-linux+bncBC4JBM6XX4IRBYUY4WBQMGQEAF3DL6Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 49F7B361B9E
	for <lists+clang-built-linux@lfdr.de>; Fri, 16 Apr 2021 10:35:48 +0200 (CEST)
Received: by mail-pf1-x43f.google.com with SMTP id k13-20020aa788cd0000b0290257c9d43ebesf2251838pff.10
        for <lists+clang-built-linux@lfdr.de>; Fri, 16 Apr 2021 01:35:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618562146; cv=pass;
        d=google.com; s=arc-20160816;
        b=UM2qTZNZ/4FIKgvJvlL0BdDRSeDc47GZcmVv3RxRLDvcU4incXpjsVCCDRAxmBU174
         AjX3Flz0CRyq9ntPi7cLqKMyvgJmhmCZiThLVJs7K+seODXLTQ2PB6qd+2Ar9qnaxW/Q
         OlaC9Cq40safG1zX4pB7fOIOqe66QjBmmN7h3LqQrjgTv+GF2zPERcPxecCUl+nbyTIh
         E/XGdp1+bR2p1Z5qqh0UlrgOs/Y3Skhc6Qv9sLf4/HF2GWKNO8fzGyMGdDks9ASt3s42
         tdgme7vpde9CJPcwMZcWb0xb3BWu5Q6MB7WVv7w2i4wi4+SAe86aw1spCtBDlC15PsAv
         ev6g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=FKCYjTV9tspXemH5hfLn1hwWhLK78pagfxVKCE5o+OQ=;
        b=cYIfpy4PQhRdj6iCC9vuBRAfTSMda4xIn2fDl/tyjSwcDZrElNmkOLe7E8ujJEzqGK
         MQKTJV+3WEAO9KZzB3h0Vc+htsyXvEMnhzMQneXWas6wxqWZs1a8XhivRlQUOAT+dBjv
         EU3EL3zNKZnUNdWz9hxnnevW7N7yc4WEUUtYVXrZ9SpdyWjPl0f+cECkI3uQrHfmEbcR
         v+DRTK7aVQYgIVcvk/r2I3Nk81d8yJFw12ZsqLtrwdxC6Rvz/cZaHGgar321eNNeJdk+
         48xTq4MHYaAjeoA66Olcy/DdIrNn7KOVOHmsB6vtofAPBSGlnxnraqoVVHOQnJ+oYrNT
         fmhg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="ELQ7Hx/R";
       spf=pass (google.com: domain of johan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=johan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=FKCYjTV9tspXemH5hfLn1hwWhLK78pagfxVKCE5o+OQ=;
        b=fFI2abA0wO2nSnaXqJQOPs1lbV14yZb53qtgP3ho5rDYr9GVEP0rc2urJ5ShfWDuHS
         rg9bvvG6D4M5GytsjWi8ovF3vtqpJmwReTk0AKfH2qmarBrbUgEkLpZfQM/lOApENCHd
         mZW9x/Ae+8TYhUkHKIPduKxdP+LT5JNzH10ussn0a/dMSq77ZVN3dbT7LruAsHZjfTFC
         MW+wEo5E5dGdbTAt3IJhyngQ7NQxm4cM4dFgEGimc78coGIjt+fGj4QYpxlhzEd21Lws
         ga/3iIFWiTZLBzuKZxBNEt1BJdKXlXfRTMRI31SUmVWO7kdo+osCLWrD/ADteQOXxJr6
         o+ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=FKCYjTV9tspXemH5hfLn1hwWhLK78pagfxVKCE5o+OQ=;
        b=aAyTV2Z1KDwZS1i2DcPBkZINMkDNuaHQTkLpADHgOx3BGMJSC35BOm1XqHP2zHaA7h
         eOJN0QjaQ7P6Iw8mcKXjraF4LeufVd7/5ok3P7hxgBzDqGrSjzdemcO3SnQhmL7br2st
         GfEgYqXaDLqrmuK/f9xprpVCelkEF2lTpXXv5wBmn0xRg4U2mEEPQdn5W741EH/4foZt
         wrLGPNJ8nHKNynP0p4cK/I2qQtgLLlrVLrJ0adq1C7s20x8wYSz3cNAcNyLKQdKGpVWM
         YY6ARPIJpp3sbt0axKbDa9YTeoudHrI5Qkeuq76QWIhHmV/tTB+3F5qEU9qG1KwgbpOT
         0c3Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533NCjWnsykdPoQ8DIi7dO/0qHARX+HqPBv2H7FUg2TYJ7ceWWl6
	IVIjO+6Oe8bEAizuFFoQX4A=
X-Google-Smtp-Source: ABdhPJyYXEhM8GlrPIm+YXFvxLYQ9YYi/9PoFbJNWE3P0A+gYNlCGVQ1ol9odM8QSoy2jKKkFeRvuA==
X-Received: by 2002:a17:902:a515:b029:eb:2723:3fde with SMTP id s21-20020a170902a515b02900eb27233fdemr8439031plq.56.1618562146734;
        Fri, 16 Apr 2021 01:35:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:9d88:: with SMTP id k8ls4280645pjp.1.canary-gmail;
 Fri, 16 Apr 2021 01:35:46 -0700 (PDT)
X-Received: by 2002:a17:902:6949:b029:e8:c22d:17ae with SMTP id k9-20020a1709026949b02900e8c22d17aemr8164021plt.57.1618562146211;
        Fri, 16 Apr 2021 01:35:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618562146; cv=none;
        d=google.com; s=arc-20160816;
        b=Ir2qQ7AOqvki43qE0TeD5OIG/Fu+F4Gq5SrZ1/+Y3MUFFbmitZcTf19/M0LTXyIPs+
         vvAn4N3FtrAHVHkzDUqUuxN/F+vBQLgKmkHrrUFHzjGRYLb4KOs1ttzZMJYYbJwlu6Mn
         Mcw6yp8odRhPuz6gy5NzSHj/IhLG6fwBVU56saDkSnG0vYF4KlxzzOZvYBJowKjqyV+H
         jYwR2bpBJMjvgIZS5RZpyYjr0DX20K/m0/wPFZHrC17U9q2sK4P3OEjZepvReCQySXzh
         G53/nbaqji5+vxXTpk8aCJxlEyUM8JfxSxl72UhPXk6HR08rQbE1rtca3ndVdFG8cC3k
         W5mQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=y5ByVKQ/qgWV5Woi56knm7JWxtUEy/rq27wAHzVR4MU=;
        b=F5KeR7Glc6U8+GcSUi9wqQgqcxsVDym4XRcxnnGg3r0MuHa5z98qe3HmHOizAl+6w7
         Hbu0k9mR1hMI38ZbrpKksrWhq2AQmwnLyd9wBn4F2Tl1RQWy6PSjKQti8Sd6qc79ucBs
         SwjQYnk56mlVpqWnXMsZQoiuDSHdvmBI3haF/HtXvEde5oO3u+g2PfOL4K+RdaA6RKF0
         FQ1j02IaozwsvAQLobbL/SS/KYvJ4B/dHsJhi5scZFzzvHf3rwPSAXh9ISF99nldy3po
         aujDNiU8tWT7a1E1huizulXsF1cHVmF49o1aG/yGm1/iQSYz5r4W0bc0qlx0kXjwC/AK
         EadQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="ELQ7Hx/R";
       spf=pass (google.com: domain of johan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=johan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id p2si532414pli.3.2021.04.16.01.35.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Apr 2021 01:35:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of johan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id E63046117A;
	Fri, 16 Apr 2021 08:35:45 +0000 (UTC)
Received: from johan by xi.lan with local (Exim 4.93.0.4)
	(envelope-from <johan@kernel.org>)
	id 1lXJx3-0001HE-Hr; Fri, 16 Apr 2021 10:35:45 +0200
Date: Fri, 16 Apr 2021 10:35:45 +0200
From: Johan Hovold <johan@kernel.org>
To: dillon min <dillon.minfei@gmail.com>
Cc: Greg KH <gregkh@linuxfoundation.org>, jirislaby@kernel.org,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre TORGUE <alexandre.torgue@foss.st.com>,
	kernel test robot <lkp@intel.com>, linux-serial@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Gerald Baeza <gerald.baeza@foss.st.com>,
	Erwan Le Ray <erwan.leray@foss.st.com>
Subject: Re: [PATCH v2] serial: stm32: optimize spin lock usage
Message-ID: <YHlMYZCCxL+SS9ye@hovoldconsulting.com>
References: <1618219898-4600-1-git-send-email-dillon.minfei@gmail.com>
 <YHRGPpQ03XgBMkiy@hovoldconsulting.com>
 <CAL9mu0JF-9hy3Z_ytpEO+hzKh0D+f-0gYaUBEA0v28EOHpC80w@mail.gmail.com>
 <CAL9mu0Ke97FUZ03jvdH8Lz2qRnVY82B7tAEtjbhW97sPOVkAxQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAL9mu0Ke97FUZ03jvdH8Lz2qRnVY82B7tAEtjbhW97sPOVkAxQ@mail.gmail.com>
X-Original-Sender: johan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b="ELQ7Hx/R";       spf=pass
 (google.com: domain of johan@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=johan@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

On Tue, Apr 13, 2021 at 07:44:39AM +0800, dillon min wrote:
> Hi Johan, Erwan
> 
> It seems still a bit of a problem in the current version, not deadlock
> but access register at the same time.
> 
> For driver , we should consider it running under smp, let's think
> about it for this case:
> 
> static void stm32_usart_console_write(struct console *co, const char *s,
>                                       unsigned int cnt)
> {
>          .....
>          local_irq_save(flags);
>          if (port->sysrq)
>                     locked = 0;
>          .....
>          access register cr1, tdr, isr
>          .....
> 
>          local_irq_restore(flags);
> }
> 
> if port->sysrq is 1, stm32_usart_console_write() just disable local
> irq response by local_irq_save(), at the time of access register cr1,
> tdr, isr. an TXE interrupt raised, for other cores(I know stm32
> mpu/mcu do not have multi cores, just assume it has), it still has a
> chance to handle interrupt.  Then there is no lock to protect the uart
> register.

Right, the sysrq handling is a bit of a hack.

> changes to below, should be more safe:
> 
> .....
> if (port->sysrq || oops_in_progress)
>       locked = spin_trylock_irqsave(&port->lock, flags);

Except that the lock debugging code would detect the attempt at
recursive locking here and complain loudly on UP.

If you really want to fix this, we have uart_unlock_and_check_sysrq()
which can be used to defer sysrq processing until the interrupt handler
has released the lock.

> else
>       spin_lock_irqsave(&port->lock, flags);
> 
> ....
> 
> if (locked)
>      spin_unlock_irqrestore(&port->lock, flags);

Johan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YHlMYZCCxL%2BSS9ye%40hovoldconsulting.com.
