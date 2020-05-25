Return-Path: <clang-built-linux+bncBCZNXZV44IJBBPPUVX3AKGQEA7DCKLA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93d.google.com (mail-ua1-x93d.google.com [IPv6:2607:f8b0:4864:20::93d])
	by mail.lfdr.de (Postfix) with ESMTPS id 299F61E084C
	for <lists+clang-built-linux@lfdr.de>; Mon, 25 May 2020 09:56:47 +0200 (CEST)
Received: by mail-ua1-x93d.google.com with SMTP id k17sf6361070uab.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 25 May 2020 00:56:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590393406; cv=pass;
        d=google.com; s=arc-20160816;
        b=u3/NYisYQTUeETYyddycDzK0AFo+/fWE3CK/XyVYLYw3N9gPFQfu4KFhmkACNVm0I4
         uaEPEbilMJlJmVCrQokcs9wkmm29VGJpYXL6e6RCzn3qmH9YFodNCddfW7sYJBOuiz2K
         mw4fRBhbm3ofD8BBa7622eNrzunXyiNBrdanUUMa82zlf92EL/wM6ElMUZchu8X/49YM
         ywsPPanvO0VvYNTkDoldC7yDJv/z6Oyj+CUWXu7+r12SHNTGDyb8t5EnC60yCZYJp4Ql
         4nc+JOEaniF1XpeqQez4WpXAib2TO4PKjPW67yFuIUQrhNyAf27saig98csU8n/V+I34
         AL7Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=j7IWI916Anm+Xh/rMJO0zm8DrIQWDCSIO3rSB6Rp+B0=;
        b=mv7pg3mgyk39a+zTCUhZPi8UFpiuJfIrPERDWZY+Dot3xDXStB3cJhV0GuNX0cCsUU
         JmI3Xf+AyM9BF2RURccYsZV7638NJXB6rdq9yVGXT4Y2cADC8n+96jo2Ex5M0NCydPC9
         Ifp0IvKB47UWt/2xQZHoxVIgdiGrOtTBbRVfRpP7IocuqfaJNNGmCTPenUJ8gjO+gn5T
         epbkpIO8iIHdzIf9OroyVGYjN64szRk+WN76p9Ic+MyPcZ64hrNBADqsPB/sqc9WJQ0U
         zYji2S3FYHbFYUKju+oPThAvMqKGS7VEewu5MSqTw+OpAx1IKUUIDL7ahKDy/fglQdPu
         PHng==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=ATtIdY8i;
       spf=pass (google.com: domain of vkuznets@redhat.com designates 207.211.31.120 as permitted sender) smtp.mailfrom=vkuznets@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=j7IWI916Anm+Xh/rMJO0zm8DrIQWDCSIO3rSB6Rp+B0=;
        b=Mvp+h9bH7A7MMChJw7xpvlrw0CsPuN2VzBENDBgiP6bC1oqHLht7x56ZRI1dcJ9K0P
         4HkQXO/fkGsiqtaGxfadTpFM6doDyr1XO19f2WeOeKQqgWAiYexjcsqYq5hDRXteYKI9
         IhDQPFVB41U+Q9mHDQzbQFtuXZG4bTet5RAIW0Siv5+VixTQOBv2kzEc0Gdyb0kVbRz/
         1p7NBZ2t+rj3jnHNegcuCT8hhHy1Ufyc/zZUUhGuBpdrrWp2qX+VVjRmhOCgQSZBiCR9
         IZwEwHyXHipqt4G1qDuohGqyrwiBANc63CO5OFZRLhfL6PfF0jODH0q6Dl0ADlrJrccZ
         MjTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=j7IWI916Anm+Xh/rMJO0zm8DrIQWDCSIO3rSB6Rp+B0=;
        b=uftEl/ZHvbs7nGNe9dheYuX3JLv9IpTwZJfN0vtor4CMi4HbpwWrm1/AQg+wmceplQ
         IF4adc9089OD2mo2kmjyu+kFyfKD9m5js1twPTU4QJMIWddKtJvY2RSSm6pOWZKYfgq6
         2y1xI/opgZPaQODxxgj9DEvlmZLz//as+MnryvRYPIAKPEjBTZcdkhXujig+VLdprfhK
         8A3Pl7o9s5pReGVnfj2Qpybrruv8lKi3v7AzTRzUPJbzmxd9ZQ7xVl457+IM4ui0WjPV
         d5MIE+A/15hb7C7ZsHs5lOHUlChlhfJVZBZx4waAu9M7PcUD2XlGARvpUfPg+tw5ikG3
         Q0sw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531QuiOuL9DojQCUU4IDRXD5cyW3ngRkFBlUQNqXZmU2BNlIO9T0
	iwxeJC+/Dcii5AO5IuE8Bng=
X-Google-Smtp-Source: ABdhPJzf95KZxE9BuOvP73OUikZo/l+12rML5zNvVtdlmwIrxWqDi+IROf+YFmR8pgYH/HlQPvrXHw==
X-Received: by 2002:a05:6102:22ca:: with SMTP id a10mr17487149vsh.152.1590393405972;
        Mon, 25 May 2020 00:56:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:fc91:: with SMTP id x17ls699906vsp.10.gmail; Mon, 25 May
 2020 00:56:45 -0700 (PDT)
X-Received: by 2002:a67:6505:: with SMTP id z5mr18445628vsb.230.1590393405619;
        Mon, 25 May 2020 00:56:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590393405; cv=none;
        d=google.com; s=arc-20160816;
        b=PhSuJY8jbjXJnisVj9fjK35UkuR3df+UZOOdjA6gQPAj1O1TfouvcYIcLceqETTnqp
         /a1xncqEbYh7w4aHuVT3nAJCHqqJf+TAqAFC5iof3IyYlfJucfuVJB3xDiwLhwIBpZpr
         D/2p6/Pvp/8gK+0x7LZmAcrm2+S3vyQOVvWxjRV6Y4xSFI5axxiev15L7pMPWMtE/+Cw
         qSESXVHTw++MpVAhi3ZtPHqD/TfRAgLo05q0LBDXxPtZSxGwjZEUkYZOKdxdhk4bNCjM
         SwOhfhmFybsMxNwHEPhYQTfDyjwEtP2L/2gKkakhync7FqasQdtnvCwf8Xfj0X8qhJeg
         bSVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:dkim-signature;
        bh=mko9QDLPqE4A2gyOETBKGDbbksV+sNGl6A8T6KB/ogA=;
        b=YInO97wk/v7Tg044YdopnxL/WeTPqmItgAuQM55pVMBRaLp0QRKwk/1+lpiSedB6x9
         mxufWg97hMwGZCcRLebm/lwrjEqHzFMcrcY5sUAVU+uQQzc6QjUv36t/YAwddttdt6IW
         /m4NmS0Zam/v75cVGsWD6oEs9HVjBplGD0yeb5YN6RaZhhv+ReJY5sCn1P0JsAz1tUk5
         KuYjIFbngXgiK6XfXyQAlwmR+cM4h+OBDybXdPKjkeXOwpn28miB57uh9BlSGr0qtoCC
         nkDqUWZ82CKWyRRm3OdgxoYuMU1Cns9p61xI2cyS6iwtZInfdpGyFRTnic13fgya7u1Q
         amAw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=ATtIdY8i;
       spf=pass (google.com: domain of vkuznets@redhat.com designates 207.211.31.120 as permitted sender) smtp.mailfrom=vkuznets@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by gmr-mx.google.com with ESMTPS id d84si691876vsc.0.2020.05.25.00.56.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 May 2020 00:56:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkuznets@redhat.com designates 207.211.31.120 as permitted sender) client-ip=207.211.31.120;
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-441-uCgDkMakPZKn5Q1s1ywSRQ-1; Mon, 25 May 2020 03:56:42 -0400
X-MC-Unique: uCgDkMakPZKn5Q1s1ywSRQ-1
Received: by mail-wm1-f70.google.com with SMTP id l26so3881878wmh.3
        for <clang-built-linux@googlegroups.com>; Mon, 25 May 2020 00:56:41 -0700 (PDT)
X-Received: by 2002:adf:a399:: with SMTP id l25mr13694571wrb.212.1590393400749;
        Mon, 25 May 2020 00:56:40 -0700 (PDT)
X-Received: by 2002:adf:a399:: with SMTP id l25mr13694559wrb.212.1590393400551;
        Mon, 25 May 2020 00:56:40 -0700 (PDT)
Received: from vitty.brq.redhat.com (g-server-2.ign.cz. [91.219.240.2])
        by smtp.gmail.com with ESMTPSA id a16sm2675512wrx.8.2020.05.25.00.56.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 May 2020 00:56:39 -0700 (PDT)
From: Vitaly Kuznetsov <vkuznets@redhat.com>
To: kbuild test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com, Thomas Gleixner <tglx@linutronix.de>
Subject: Re: [tglx-devel:x86/entry 4/119] drivers/xen/events/events_base.c:1664:6: warning: no previous prototype for function 'xen_setup_callback_vector'
In-Reply-To: <202005241841.gT8c6PVb%lkp@intel.com>
References: <202005241841.gT8c6PVb%lkp@intel.com>
Date: Mon, 25 May 2020 09:56:38 +0200
Message-ID: <87pnas8n2h.fsf@vitty.brq.redhat.com>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: vkuznets@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=ATtIdY8i;
       spf=pass (google.com: domain of vkuznets@redhat.com designates
 207.211.31.120 as permitted sender) smtp.mailfrom=vkuznets@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

kbuild test robot <lkp@intel.com> writes:

> Hi Vitaly,
>
> FYI, the error/warning still remains.
>
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/tglx/devel.git x86/entry
> head:   7f5a4e54ac5fab86776ca040aa9b998e35bf7a86
> commit: fad1940a6a856f59b073e8650e02052ce531154c [4/119] x86/xen: Split HVM vector callback setup and interrupt gate allocation
> config: x86_64-randconfig-a001-20200524 (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 3393cc4cebf9969db94dc424b7a2b6195589c33b)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         git checkout fad1940a6a856f59b073e8650e02052ce531154c
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kbuild test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>, old ones prefixed by <<):
>
>>> drivers/xen/events/events_base.c:1664:6: warning: no previous prototype for function 'xen_setup_callback_vector' [-Wmissing-prototypes]
> void xen_setup_callback_vector(void) {}
> ^
> drivers/xen/events/events_base.c:1664:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
> void xen_setup_callback_vector(void) {}
> ^
> static
> 1 warning generated.

I sent
https://lore.kernel.org/lkml/20200520161600.361895-1-vkuznets@redhat.com/
last week, it should fix the issue.

-- 
Vitaly

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87pnas8n2h.fsf%40vitty.brq.redhat.com.
