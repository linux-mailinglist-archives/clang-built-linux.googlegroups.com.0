Return-Path: <clang-built-linux+bncBCF45S4X2IBBBOXB4PYQKGQEWC53PYY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3a.google.com (mail-yw1-xc3a.google.com [IPv6:2607:f8b0:4864:20::c3a])
	by mail.lfdr.de (Postfix) with ESMTPS id E1EA91514E7
	for <lists+clang-built-linux@lfdr.de>; Tue,  4 Feb 2020 05:19:07 +0100 (CET)
Received: by mail-yw1-xc3a.google.com with SMTP id p193sf24442307ywp.16
        for <lists+clang-built-linux@lfdr.de>; Mon, 03 Feb 2020 20:19:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580789946; cv=pass;
        d=google.com; s=arc-20160816;
        b=Yj4iFvnxqTXYMuwCxR9iL/of7nbvOcoLXrq36GOBKvyoyNO+2fCQnUgkYnfDOo8u4p
         5/HlyVOombRefpu2aRRG8Rz747CH9C8WCGAsrSJypC+OeAYASeJMpg1Y+20DYrdbJbRW
         tKaT+N5gQnNZWvuo62m/3j1JYd48hbPV6qFRNabIc6HIQJmApi9FUb7dq3u5t1wu3pPB
         W8r9t9li7iZQa2xS+vbNI+YSvsXF/HISZHVmw79vgJNQWMlFKlzeBx6JLQnDBxikJvfz
         1F6DQjj5rDcnmksJde3+ZmVZDXrTG0cY6SG+8LyhTggw7ThvrraR8k/NtasoEIIC8/uE
         Ggqg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=+bA06MT+TgARp2Ucolv3ZdngpzGI/IBWt4Cz46yElCo=;
        b=D9xmAAmBB59ZhRTpV2cjS/hR8j39PyfsbPCsktuZXNQjC6ydO4oE2/8GG6pv8SJFv8
         1q9WqUbUm2ktL4fQpqtXT+20Whs2KG9nds5BsMdcsydettKDVipDWbMCdVaEnwMbMkB6
         JG+qsAS0buOXVm2IlFjJYu4abiQurJK5ZEW5UoIf2G/fBiWmoROr5C9XL8vtxGFEIyhM
         1T/XRH8WTF2kGqKgiWKTMRNmx+3l6qSnPrPx8uP0ENqiYXGdV6/VAXvAib8dRP8gBS3c
         8RYslqRrcLCR+vxiEp9tXrQHgTfFKojUQWeBVkbhUox3MnS0Loa+FGcwL5EOtj7aHAiv
         2dhQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@liquorix-net.20150623.gappssmtp.com header.s=20150623 header.b=fK2ZRMfz;
       spf=neutral (google.com: 2607:f8b0:4864:20::d42 is neither permitted nor denied by best guess record for domain of steven@liquorix.net) smtp.mailfrom=steven@liquorix.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+bA06MT+TgARp2Ucolv3ZdngpzGI/IBWt4Cz46yElCo=;
        b=YijjSLcA5t2UrcOCQAE8cOgrPUfh1CZkzn3y7/Fz6LOQSdhNfsEwFlSLqzDWeaX5OJ
         rhdYcEXciXMKzMjYtAn+k+HS+pf8L6R3s2kCAnX984ILw8CRtthXI8p7RfyPnhCKDS6i
         s2QAyYjPinSluOhwTUtlbduj8DMAL0Qxm/U9jH/XxlEDpBrSLKKHsZswKNXMQxTc+MQ/
         9PTXKbG7DiQ+0SaScnms8fp2fPjQG+Lswa4ogqY75d7yffx4qZVlMos4gbnhx+t12zss
         rmdeJT64bVg8Kxs2Iu14C6ynqaWUyOY2Sboz3CT84w6Hyg6H3AiA5sVJ4eohX+jk0B1S
         CaMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+bA06MT+TgARp2Ucolv3ZdngpzGI/IBWt4Cz46yElCo=;
        b=WIwQ0FAHC9/sdGexcf31lM3BUwTp3Qpjh/9UH/MFecgnW2RGDINjNUy9jbrXVtOYLD
         PK49eaZD48JYZ7N8werQQBfV3OGKucy0VKGzSU+8VFI12X7dJ9V2Bo6lrai/HTEh4eE1
         SHY8jcrzMPlfwlVjm6G53Ah0ohhqJaF3t8j4Sw+LSfsrMxdLWHAj8WP62fUrXO/DqxLB
         nKSPQgAJPvhHtLHJiJwSkUqFRMEntWSkWhUXGkoMCcuY6PTrspFH95r3gLRk14zKexj0
         wsuP7Rr8jxxi3uZPD6fv9fstdG0oMDmf/ERRbDmh771YEFL28p7lZTJjwmoLbYcPo0GJ
         rgAA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUuOyiLQ85tv0CII2nVpUL67OYisS+Gl/EW97e2GaKjQI8IaXpt
	GTF3pfTw4MWyv3hjjV3k0Es=
X-Google-Smtp-Source: APXvYqx3FkwRpR8DWPFDDjRtmvIfiexNny1BYKP2JNJUr3HgMqN+sN4OTvquEjKvPuwO17OIYSapOA==
X-Received: by 2002:a81:7b0b:: with SMTP id w11mr3393496ywc.10.1580789946809;
        Mon, 03 Feb 2020 20:19:06 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:ac4f:: with SMTP id r15ls418180ybd.8.gmail; Mon, 03 Feb
 2020 20:19:06 -0800 (PST)
X-Received: by 2002:a25:dc90:: with SMTP id y138mr23146151ybe.500.1580789946399;
        Mon, 03 Feb 2020 20:19:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580789946; cv=none;
        d=google.com; s=arc-20160816;
        b=PdZYnfe+0pBTTVg+OseNsvVbxNA9od4mb36foH/BKbHwDn4ILlxMWzp80G2cqWfrAH
         8hXcZM92c+gwmV1GtEqdrTk6G4/ed7ouSkfHpO59hIG/7uhj5Gsr/jZqGwbVUCHwrD3m
         uaXoJUbKExNvGtBtL3vEydPvSAWBmaZgZU30W03EkX6kU8CcZ6/mGy7ngafH2/N1xcyV
         nwGsoGcjMCRXSjmJe0W7z5TLAVbqanczITWh2wLm7uukboUMJBrPM6opm/pUPbcfddEi
         uzWlyKqH+AVbLx0hOeRToA0R+F468L9N2i19dJGGVJwX+E9+BaYIm2lbdx4Ws4FmTJjE
         MSwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=vko3tB8SGIT5au4z5utYPa9jgoGGlLuPGvLlLRuvJMY=;
        b=h0aJHLcL+46+v7cCFN2yW7VgqnIGh1jBQR0v50fuLa8E2Ynm1Akvgqz9z9gn12O30P
         QmvkKFiskENHKDlh9N7jY2aq6yaeVhi1GHqw0dZIxhW7uctJnnd7NCJORDLK7siVo9oi
         dR7GmeYaV4ZUyF/Bcpr0Y8+f5mSEum0uztFwS2XHZVPKqsGeqpPBpQYA0YnzlW1LLq23
         JdsuaV8MNCm15OYk/dhxskjBKC10dmgB2xuvVwT4TfXtpC/WkraKIOqw4q9gPwDgnk1z
         44bnE1j1E64EJrQYhfObq+9YrXTkXsZq7SilR0pveVoYOGo8sbPaooNQCXhLEWYldmkT
         SpOA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@liquorix-net.20150623.gappssmtp.com header.s=20150623 header.b=fK2ZRMfz;
       spf=neutral (google.com: 2607:f8b0:4864:20::d42 is neither permitted nor denied by best guess record for domain of steven@liquorix.net) smtp.mailfrom=steven@liquorix.net
Received: from mail-io1-xd42.google.com (mail-io1-xd42.google.com. [2607:f8b0:4864:20::d42])
        by gmr-mx.google.com with ESMTPS id s64si1059754ywf.0.2020.02.03.20.19.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Feb 2020 20:19:06 -0800 (PST)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::d42 is neither permitted nor denied by best guess record for domain of steven@liquorix.net) client-ip=2607:f8b0:4864:20::d42;
Received: by mail-io1-xd42.google.com with SMTP id c16so19396036ioh.6
        for <clang-built-linux@googlegroups.com>; Mon, 03 Feb 2020 20:19:06 -0800 (PST)
X-Received: by 2002:a5d:878c:: with SMTP id f12mr21931490ion.164.1580789945561;
        Mon, 03 Feb 2020 20:19:05 -0800 (PST)
Received: from mail-io1-f47.google.com (mail-io1-f47.google.com. [209.85.166.47])
        by smtp.gmail.com with ESMTPSA id w11sm8343254ilh.55.2020.02.03.20.19.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Feb 2020 20:19:05 -0800 (PST)
Received: by mail-io1-f47.google.com with SMTP id x1so19359674iop.7
        for <clang-built-linux@googlegroups.com>; Mon, 03 Feb 2020 20:19:05 -0800 (PST)
X-Received: by 2002:a05:6602:2501:: with SMTP id i1mr22236080ioe.231.1580789944866;
 Mon, 03 Feb 2020 20:19:04 -0800 (PST)
MIME-Version: 1.0
References: <202002021939.yaHm7qPy%lkp@intel.com> <CAKwvOdmWZoT8jui_BiVn1H+hLD3cPco2P601M+jkd+7=niUL-A@mail.gmail.com>
In-Reply-To: <CAKwvOdmWZoT8jui_BiVn1H+hLD3cPco2P601M+jkd+7=niUL-A@mail.gmail.com>
From: Steven Barrett <steven@liquorix.net>
Date: Mon, 3 Feb 2020 22:18:40 -0600
X-Gmail-Original-Message-ID: <CAFOzAURwgz4+D=3XC-DtgtBO4N7K2evu1j2ugVy3qLHKkWPxjA@mail.gmail.com>
Message-ID: <CAFOzAURwgz4+D=3XC-DtgtBO4N7K2evu1j2ugVy3qLHKkWPxjA@mail.gmail.com>
Subject: Re: [zen-kernel-zen-kernel:5.5/muqss 22/22] kernel/sched/wait.c:14:9:
 warning: 'WF_MIGRATED' macro redefined
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: kbuild@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, kbuild test robot <lkp@intel.com>, 
	kbuild-all@lists.01.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: steven@liquorix.net
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@liquorix-net.20150623.gappssmtp.com header.s=20150623
 header.b=fK2ZRMfz;       spf=neutral (google.com: 2607:f8b0:4864:20::d42 is
 neither permitted nor denied by best guess record for domain of
 steven@liquorix.net) smtp.mailfrom=steven@liquorix.net
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

Hi Nick,

This commit your test ran against isn't intended to go upstream, but
is a workaround for an out-of-tree patch that hasn't been officially
rebased for Linux 5.5.  I took a shot at fixing the build errors and
redefined a macro here that only affects MuQSS.  If you use an
upstream configuration, it triggers the macro redefined warning.

I added the "Reported-by: kbuild test robot <lkp@intel.com>" since it
genuinely helped me find my mistake.

On Mon, Feb 3, 2020 at 9:08 AM Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> + Steven, can you please take a look at the below report, it looks legit?
>
> On Sun, Feb 2, 2020 at 11:58 AM kbuild test robot <lkp@intel.com> wrote:
> >
> > CC: kbuild-all@lists.01.org
> > TO: Steven Barrett <steven@liquorix.net>
> >
> > tree:   https://github.com/zen-kernel/zen-kernel 5.5/muqss
> > head:   bf569053d0fe08b3615793a0105afff3d28f3676
> > commit: bf569053d0fe08b3615793a0105afff3d28f3676 [22/22] muqss: Re-define WF_* wake flags in wait.c
> > config: arm64-defconfig (attached as .config)
> > compiler: clang version 11.0.0 (git://gitmirror/llvm_project ba8110161dfb096bbc63039afd87ff6417328f91)
> > reproduce:
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         git checkout bf569053d0fe08b3615793a0105afff3d28f3676
> >         # save the attached .config to linux build tree
> >         make.cross ARCH=arm64
> >
> > If you fix the issue, kindly add following tag
> > Reported-by: kbuild test robot <lkp@intel.com>
> >
> > All warnings (new ones prefixed by >>):
> >
> > >> kernel/sched/wait.c:14:9: warning: 'WF_MIGRATED' macro redefined [-Wmacro-redefined]
> >    #define WF_MIGRATED     0x04            /* internal use, task got migrated */
> >            ^
> >    kernel/sched/sched.h:1659:9: note: previous definition is here
> >    #define WF_MIGRATED             0x4             /* Internal use, task got migrated */
> >            ^
> >    1 warning generated.
> >
> > vim +/WF_MIGRATED +14 kernel/sched/wait.c
> >
> >      8
> >      9  /*
> >     10   * wake flags
> >     11   */
> >     12  #define WF_SYNC         0x01            /* waker goes to sleep after wakeup */
> >     13  #define WF_FORK         0x02            /* child wakeup after fork */
> >   > 14  #define WF_MIGRATED     0x04            /* internal use, task got migrated */
> >     15
> >
> > ---
> > 0-DAY kernel test infrastructure                 Open Source Technology Center
> > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation
>
>
>
> --
> Thanks,
> ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAFOzAURwgz4%2BD%3D3XC-DtgtBO4N7K2evu1j2ugVy3qLHKkWPxjA%40mail.gmail.com.
