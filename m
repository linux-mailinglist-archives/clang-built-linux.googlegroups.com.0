Return-Path: <clang-built-linux+bncBAABBGHVXP6QKGQEIJK7O4A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa37.google.com (mail-vk1-xa37.google.com [IPv6:2607:f8b0:4864:20::a37])
	by mail.lfdr.de (Postfix) with ESMTPS id 43D342B26B8
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 22:28:57 +0100 (CET)
Received: by mail-vk1-xa37.google.com with SMTP id e202sf3128819vke.7
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 13:28:57 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605302936; cv=pass;
        d=google.com; s=arc-20160816;
        b=Vz2mGLM0v0B9Ik59N/iINJpgMd4M3rCfWF0AlWJSC+DIpmNlLIhY/ueXqFNmFfS6NI
         XRJDQkDTH4JiEX1o/XIPTgNRkkhj/ib/84ckVLaEhk56rNYSdbSBaBMjh8ALgJtCopRe
         a6k+MjsRDy0Ynl46z1gkyA6TUZD1A1LMZpefXoHmEmIS/msFaqfGA5hzIwWx0IAR9tpP
         6siauzt6NEzohDvGBUxQDVwsqq26nnarwlbhpAADS5jaan3FatBMNzFtTnrFrC2ymtDE
         0EbW01M8suV+K4mcJNeBzn2Ze6peP0bPhjKNqo2UC6zHYVA6nAJUdrqvn50X2CxoZ74N
         CGGw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=Fxe0OQqfM1CZbF1Wvv131ZjYUIPYxpIkcm4m5SuCg+Q=;
        b=lqVH8qRhPfPUbELKghxte9foYkpI+AZ0/q3MXCoXbWUnfkH/OEECF8NBY0Dpq7rqdh
         aHEC3evzycK77uaYVHMpq/2lFyRlXQP88fLq0er3UUstR+ZaccTVUJ7pWp/eGKY0mUV6
         PBOX1J4cqSp5f57zO5wO6HpkfZ6N0R2moPvkW+fiqvLDNCVfgE78WXSrytvp6NPhimgn
         xFbsj9wxG5SO3Km8myQ3FvCFjb5HoJbae0p6q2iP2m4c8+iCjX4XNR4i+DTQCQz58CxF
         O8+7NGYoNT7XbPQL/m0Chnkb5sbLP8eYn9uXV1xD2X6Cw0Q0frRPxbPiI/1B0Lvaacvo
         98Nw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linux.microsoft.com header.s=default header.b=ekV+DQ3e;
       spf=pass (google.com: domain of mcroce@linux.microsoft.com designates 13.77.154.182 as permitted sender) smtp.mailfrom=mcroce@linux.microsoft.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linux.microsoft.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Fxe0OQqfM1CZbF1Wvv131ZjYUIPYxpIkcm4m5SuCg+Q=;
        b=H7TbLn0sAs0mdlp1sZTIlaodODRQICYkoSmYgIE+PLkpvSFI2fizOnvWdGQQFH1mRb
         qEoJfYjdfGnb0DLmuITC4MQSj6h9bqtF4NXz1NNvo94njpd3ZD5XSN+m9fP/m05I+VNP
         dWPLuVCC6CJscHHOj3SXRrs7Ig2vHf0S0chxNovZiUubMsC1JwBrjOy+OYhNm8KXOMtf
         PsToEtBjp/2/o9LYdMUI7cKjGFAxK5RyXhTEe45YhJAXrCkmwwowMIwV3TAH+8WlbJXr
         H+9cw8eom0VllORVkmjFWOqlDJo0ON4NFyly/KHjmb4LO69FM36Dptkdyt8JdR6dLsPg
         KAeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Fxe0OQqfM1CZbF1Wvv131ZjYUIPYxpIkcm4m5SuCg+Q=;
        b=maakKV2HFoWQP12l3NGnH8T5MMYoWJ7xjl46rJhm+8s6ZqXiIxs3sUnvB7v4gdJgOs
         bt9c6O68yyzGAsktniQqB0/6taQQ1/bY97dVUNAY5Ssyb5CnUyaaOq/JUnM/yoGkoCWm
         ZxlP0rH4ViBLainiZJvaJ6QtRuKjXHNillenPv+oL3Opb/mCYeZw8iqg1mVpJBVeIXrN
         c74yBJ8Y9cJLh0RIElC56C14JXaKSRkzBaLy+RZdvclYKxix9w+r4Yl0mTED2RJ0Atx0
         G+AzA2kwN5Yto1Zsih8CrSBPMDaCxFM5zaqQ2Y/9DdyDnAUx+qGpXygysRrbC+toPEOL
         TlaA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532dSRRetaQsmx7bc8sImfnRaNvaFQQSUfYRmhot2DlM5R37YdGh
	i+SnBWOCfEXAhRxB7XEIzsQ=
X-Google-Smtp-Source: ABdhPJxUG/1x9cgh/XFnOyWmmzyUROaL8NPuc2V1TbeGPNeCVEaOKBe6pdjsAtqq5XiH6aANJrRC4Q==
X-Received: by 2002:a67:403:: with SMTP id 3mr2843214vse.54.1605302936287;
        Fri, 13 Nov 2020 13:28:56 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:fe4a:: with SMTP id m10ls1075494vsr.8.gmail; Fri, 13 Nov
 2020 13:28:55 -0800 (PST)
X-Received: by 2002:a67:7286:: with SMTP id n128mr2885391vsc.55.1605302935817;
        Fri, 13 Nov 2020 13:28:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605302935; cv=none;
        d=google.com; s=arc-20160816;
        b=bsDtSrYCKg6Qa4lyvaH4EfM5cuKW4ytHY08mVqhxYIjvxlwV8wKCyAJfD8KOtd6wJm
         SFS0i0vKSBfVFlkU/e5EV3Gh0XuhBqrvhrwWOuyMVecS4GiiXZ7paD+lonnfEOEz+6c4
         Gwg5YZbQcEV/hw2xmdqTaCIAB+uDGECVRRHTjdWU0P8YLkW8176yWfsfOT0yWdJom/m5
         y6zTdb36M2M2JOLBw1waDK5PXCde9MG2NngO5Ms0Ei3M0Wink66Qa7pKuJROVlrLTSsT
         LO2SibmM1k3FKtSJF89Rdf2+MNvTWCu6CSenpETE0y9cbA2tYmJCKBl4KEHtqrRX5l0B
         tBtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=Q8tBea9wG2ltNWXDqKwNyyqi3spAu6w8nUfb7d6YXPM=;
        b=VvwaFBbKrWG6t2mfTTw/MNgwxgjEOSzsNywcpaXx31X0cIHqiBw0DSdEPzbB98v+0m
         aezB1uVD+oP7HNWK4II0nx0piZY5YF1IEmwn2zz7QICez3KecF5yIHnImPhfNbzO8BEV
         mcrvurlUHHnjE7rKCKAVfSi/e2yMkSbaE++kYVewbMSgrazWWaM1v/9OHY6+qdOrlyTP
         N5lCD8trNWjGRUC67ZaejCiuI9HkKu6JGLLeGFtjqHRRmp7WM5gqxNCcuc2WTHhzgcKQ
         u51PdRbg6xt6NBD6Aj6vM7U5WVK0gsjqkPXsboWNoIo9lHZs9wh7N4gd7cxzXwTV3Uve
         F5Ug==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linux.microsoft.com header.s=default header.b=ekV+DQ3e;
       spf=pass (google.com: domain of mcroce@linux.microsoft.com designates 13.77.154.182 as permitted sender) smtp.mailfrom=mcroce@linux.microsoft.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linux.microsoft.com
Received: from linux.microsoft.com (linux.microsoft.com. [13.77.154.182])
        by gmr-mx.google.com with ESMTP id m17si740559vsk.0.2020.11.13.13.28.55
        for <clang-built-linux@googlegroups.com>;
        Fri, 13 Nov 2020 13:28:55 -0800 (PST)
Received-SPF: pass (google.com: domain of mcroce@linux.microsoft.com designates 13.77.154.182 as permitted sender) client-ip=13.77.154.182;
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com [209.85.222.181])
	by linux.microsoft.com (Postfix) with ESMTPSA id C5E3F20B71D3
	for <clang-built-linux@googlegroups.com>; Fri, 13 Nov 2020 13:28:54 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.11.0 linux.microsoft.com C5E3F20B71D3
Received: by mail-qk1-f181.google.com with SMTP id r7so10348621qkf.3
        for <clang-built-linux@googlegroups.com>; Fri, 13 Nov 2020 13:28:54 -0800 (PST)
X-Received: by 2002:a37:4e0a:: with SMTP id c10mr4012902qkb.492.1605302933880;
 Fri, 13 Nov 2020 13:28:53 -0800 (PST)
MIME-Version: 1.0
References: <20201110202746.9690-1-mcroce@linux.microsoft.com>
 <20201112035023.974748-1-natechancellor@gmail.com> <20201112151320.e0153ace2f2eb5b59eabbdcb@linux-foundation.org>
 <CAFnufp1j6ZzxLJA2x28BdxbTtnN_KtnXB49ibPcbze=B2ru3aA@mail.gmail.com>
 <20201112171826.0fa3c6158f3c2780f90faafe@linux-foundation.org>
 <CAFnufp1OrGeGgUn9_2V9HMtfb-7GwuEwz4+Co_W8ehcVOQVscw@mail.gmail.com>
 <20201112184637.de44afedf0ce0dcab36dd0ad@linux-foundation.org>
 <CAFnufp31YO9yTXVqgKNZGR9XXRKfGKM4Y4NLk+4_uXdoWa+G4w@mail.gmail.com> <20201113162043.GO1602@alley>
In-Reply-To: <20201113162043.GO1602@alley>
From: Matteo Croce <mcroce@linux.microsoft.com>
Date: Fri, 13 Nov 2020 22:28:18 +0100
X-Gmail-Original-Message-ID: <CAFnufp3NBHUQ8fT1TEw5BvazGQjP9KmsU3y7ioJScWQ9qGiq1A@mail.gmail.com>
Message-ID: <CAFnufp3NBHUQ8fT1TEw5BvazGQjP9KmsU3y7ioJScWQ9qGiq1A@mail.gmail.com>
Subject: Re: [PATCH] reboot: Fix variable assignments in type_store
To: Petr Mladek <pmladek@suse.com>
Cc: Andrew Morton <akpm@linux-foundation.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Arnd Bergmann <arnd@arndb.de>, Kees Cook <keescook@chromium.org>, linux-kernel@vger.kernel.org, 
	Guenter Roeck <linux@roeck-us.net>, Pavel Tatashin <pasha.tatashin@soleen.com>, 
	Mike Rapoport <rppt@kernel.org>, Tyler Hicks <tyhicks@linux.microsoft.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: mcroce@linux.microsoft.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linux.microsoft.com header.s=default header.b=ekV+DQ3e;
       spf=pass (google.com: domain of mcroce@linux.microsoft.com designates
 13.77.154.182 as permitted sender) smtp.mailfrom=mcroce@linux.microsoft.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linux.microsoft.com
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

On Fri, Nov 13, 2020 at 9:06 PM Petr Mladek <pmladek@suse.com> wrote:
>
> On Fri 2020-11-13 03:58:49, Matteo Croce wrote:
> > On Fri, Nov 13, 2020 at 3:46 AM Andrew Morton <akpm@linux-foundation.org> wrote:
> > >
> > > On Fri, 13 Nov 2020 02:38:18 +0100 Matteo Croce <mcroce@linux.microsoft.com> wrote:
> > >
> > > > At this point, since 'pci' enables BOOT_CF9_FORCE type and
> > > > BOOT_CF9_SAFE is not user selectable, should I simply leave only
> > > > 'pci'?
> > > >
> > > > This way, we'll have the same set of options for both sysfs and kernel cmdline.
> > >
> > > Well, you're the reboot expert ;)
> > >
> >
> > So honored! :)
> >
> > > But my $0.02 is yes, let's keep the command-line and sysfs interfaces
> > > in sync and cover it all in documentation.  It would of course be
> > > problematic to change the existing reboot= interface.
> > >
> > > I assume that means doing this?
> > >
> > > - #define BOOT_CF9_FORCE_STR     "cf9_force"
> > > + #define BOOT_CF9_FORCE_STR     "pci"
> > > - #define BOOT_CF9_SAFE_STR      "cf9_safe"
> >
> > Either BOOT_PCI_STR or BOOT_CF9_FORCE_STR, I have no strong preference.
> >
> > The syntax is 'pci' while the enum BOOT_CF9_FORCE, so we can't please both.
>
> The question is whether we should modify/allow to set these values at
> all.
>
> Anyway, we must prevent them on non-x86 architectures because
> the reboot behavior would be undefined there. They could probably
> make a mess even on many x86-architectures.
>

That's right, but the same can be obtained by passing 'reboot=pci'  on
non x86 machines: the cmdline parsing is generic and will set
reboot_type on all arches.

> I have to admit it has become much more complicated than I thought.
> It brings back Andrew's original question whether this interface is
> really needed. Are you going to use in the real life?
>

Yes, there are some cases.
Not to mention complex use cases like let persist some memory regions,
or change the page size,
if a network driver fails to rmmod with the infamous
"unregistered_netdevice: waiting for wlan0 to become free",
enabling force on the fly allows to reboot the machine.


> The interface might do more harm then good when it allows to set
> reboot_type that is not normally accessible or disable it when
> it is strictly needed.
>

I looked at the reboot_type usage, there isn't any reference outside
arch/x86. In fact, the parameter is just ignored:

# uname -m
aarch64
# cat /proc/cmdline
console=ttyS0,115200n8 reboot=pci
# reboot -ff
Rebooting.
[   43.893833] reboot: Restarting system

The same applies for reboot_force, the only flags available on
different architectures are reboot_mode and reboot_cpu.
We could hide some handlers for some architectures. We save some
space, and avoid letting the user set flags which do nothing.

> Anyway, we should get input from some x86-experts about the BOOT_CF9
> values.
>

Sure, x86@kernel.org ?

Regards,
-- 
per aspera ad upstream

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAFnufp3NBHUQ8fT1TEw5BvazGQjP9KmsU3y7ioJScWQ9qGiq1A%40mail.gmail.com.
