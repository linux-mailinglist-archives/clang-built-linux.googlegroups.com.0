Return-Path: <clang-built-linux+bncBCQZJVV3RQNBBCEUVX7QKGQEUU5T73Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103f.google.com (mail-pj1-x103f.google.com [IPv6:2607:f8b0:4864:20::103f])
	by mail.lfdr.de (Postfix) with ESMTPS id E04352E71C3
	for <lists+clang-built-linux@lfdr.de>; Tue, 29 Dec 2020 16:23:53 +0100 (CET)
Received: by mail-pj1-x103f.google.com with SMTP id 25sf1927630pjb.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 29 Dec 2020 07:23:53 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609255432; cv=pass;
        d=google.com; s=arc-20160816;
        b=CNlTeJHsks70L5Nt6nbBz8uQ/EtLshRV3CgiyAR6ErucZx4Rs/XT6z50ElycJ5x6xA
         OdWajfGAgx1B812RXDDYKodmNrgVqIOPcwC3X0vOIE1bwnepSnl36e9gbbBXmUa4nB83
         rfJTPy5zxQcDmx2BaVTV4m0rmiG2LYq2G8z1JHhwpv1YWuKVUqQGGZVG/m6gdqgPBOTm
         axIgHlxB1ZWDM4SBS9cXiC1QBVkuJQqeg3Stey9CPVSfhhwazb7YSLUOWm0ezMx4cTZM
         xIqLFqry6RaWGIr3fAR2xPgk4fzXO668E2UP+h1QltftkGy0LCeBljVqQF76P9vt6YfJ
         hfPw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=LHrqTQg0yDjzdkqLYiJodpHIpFg6lnHHb2G0bT6vIj4=;
        b=NYXhBRlxpKHQO+51goE1H8ZxKuwIfzCwwAyma64LVNX37IBpWMF5ltwKFWg8ccuB/T
         M1eozaLhIrKLfKGJY4CmPWmIMER6Cv4wiGlxqirsRma2FCTrZxw8JCQYtR+vFBrhuVKP
         28AqsPL+VTOD+Gs1xZ6ixGj4qMXX3zz+iufTB3VVdRoWM/27CY7LSYtrPpSmjVFOCI1z
         bbZkIQshdC90il+DxTpjwWaEGSuSpm97WumNNFC4K4A77Gwhzps5JYdQljDLAgjb1hSV
         FCvju23UTRbATZECH1mhQAXNMY6mSjnzkI93KVJVFiFyNV6cdXUd0STRtLaiQsHXstr1
         naSA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of rjwysocki@gmail.com designates 209.85.167.171 as permitted sender) smtp.mailfrom=rjwysocki@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LHrqTQg0yDjzdkqLYiJodpHIpFg6lnHHb2G0bT6vIj4=;
        b=nMZZY1yCDEyHMEIBvDFDOF6KlEOyAkG5UZH/6rucMx74XuJ1BpymRqgKC+QQBjlbgK
         lKq88IuL/fEsd8zURxNk7F4Q3uCXb1D8vzYBwLYTIWaHbzNM0hzvnOu5vNDf4L5Hfjoo
         Qku0nn8B7t2HALw/wnDD/z+GYG/sqzeBy3VLN5nNXfJ3y8JopnF5LROAt7LTiTcSOhQu
         m4ZSa3PYiL8wxh3y0MO/FlHZOq7VKaM0WrZ1X3fK5yubt6CxEtbiupvpLCUaWpyUqCAl
         PgWk9TM+NsWRjP7gFmXLQ/Wsq73hyQVQPcLz7dteEf3PANzGBjsgaT6/VIJolS4q9JJf
         K5yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LHrqTQg0yDjzdkqLYiJodpHIpFg6lnHHb2G0bT6vIj4=;
        b=g1gZzfKrsPLQHhkNwoky9R+FAbIydCZN/w86TEJLsF9hF+5W2ErSfXPvjvw/bZbXXC
         /GD7Suv0scKM+ft+rp6Gy/o6/XD+pWCF9Xz+EFaRE7zKCUssUELmiprvIptgQ8bPy03m
         pbkUwtT9ZiN420Ne0Fs+oayLip79OtDulnzXuOgyCZ3btrtIASH9rpiEoktlrmz7lqBC
         OOwm/D3D8T/CGWoD4x4XljMngoNs7QS0oErhUv+UU8qSg5Dqze1aZNnhdt7GgRgMyQOI
         xwOVWU1lz0kCUwzSotpibptyqvwQ8eZPlIVKGAQ6IwQY575CrYv4DJG/86/HgKHU0qFc
         irBw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530cQFMN3RV/zIBcUrvlu5xC+jmGvKoKTw+5SxmzLwcUZuU3fl19
	iEPPg3+lqeZSJienZREzY9U=
X-Google-Smtp-Source: ABdhPJy+8WR57tLmsBoI+YcrYSdFSLbIxk6HV7AN5K0yBcN3Ng7duELOBSYJPfwsDTN1vnLzJoCP6w==
X-Received: by 2002:a17:90a:db49:: with SMTP id u9mr4412133pjx.0.1609255432463;
        Tue, 29 Dec 2020 07:23:52 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:d149:: with SMTP id c9ls6634339pgj.1.gmail; Tue, 29 Dec
 2020 07:23:51 -0800 (PST)
X-Received: by 2002:a65:6409:: with SMTP id a9mr48076864pgv.171.1609255431770;
        Tue, 29 Dec 2020 07:23:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609255431; cv=none;
        d=google.com; s=arc-20160816;
        b=D1ixYDHiRzqfdBzCRTkG3Z05IqPFBy20eWzg7BXv6dl19SVNsKpMGcGD5gdAc7JgNs
         PbD9cnJAlbDY42ONYe6eI26hpFfVLaL+8Hed8RLUntzFW6Ilv1wE64GRgL7ANVSlqBQb
         cpVVuWcjLVAWplJewcl+6+JhglnJTB+BxtNAgttn60mE/Z9CD+CSVrhkxhrgoaH6URQf
         Ze9a4Omvufx6EHDOpu522ikMeXdP8oQU5TOTdnwlrEfJu25y3yLoJJFFCsRx3btLDDo4
         7/aZ8pXoQSPrEkXstBBwuSS/MgKwwpMU7wtk5dMBKmOV2ncS+kdHZAvgIqJE8/RcWT8j
         x6QQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=RBJgLUxrrIIeWckdaZ1KmYo7l7pnSTRV7mAG4e50Ne0=;
        b=ApIpsuWX7TDnPTme8BdmWqU+IiQgf18n+ONSc19ZLqynfJkqF+OPLB7xTkFDnJAUi2
         HuMF7yKL+avuaqZbdDdWxwQGyJ3ANdZZE8gnkimGgoTSk5S/FcWeohDlstaYJ5txinnl
         kdzKnzb60rJVXEUa5UVuFYrAlrA4Blv3oEf5AsrQdrbGcesqjXVCspXx7c026F8ks15a
         qGqJiSPOJo/YRgiif+uHrlasHeOc1oyvW4DPSESm7QJ1cRMb2FtVnwP6aYThXii5skG4
         XGwa1DCU49LDXfAneB1BnM5V9h13g2A+SuCmPyBHJSOCsZnSC/zPQxXQjzcpqUEQ4CqP
         lapA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of rjwysocki@gmail.com designates 209.85.167.171 as permitted sender) smtp.mailfrom=rjwysocki@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail-oi1-f171.google.com (mail-oi1-f171.google.com. [209.85.167.171])
        by gmr-mx.google.com with ESMTPS id q15si2795211pfs.1.2020.12.29.07.23.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Dec 2020 07:23:51 -0800 (PST)
Received-SPF: pass (google.com: domain of rjwysocki@gmail.com designates 209.85.167.171 as permitted sender) client-ip=209.85.167.171;
Received: by mail-oi1-f171.google.com with SMTP id q205so14864326oig.13
        for <clang-built-linux@googlegroups.com>; Tue, 29 Dec 2020 07:23:51 -0800 (PST)
X-Received: by 2002:aca:4c1:: with SMTP id 184mr2732472oie.157.1609255431165;
 Tue, 29 Dec 2020 07:23:51 -0800 (PST)
MIME-Version: 1.0
References: <202012271352.JvNDF17O-lkp@intel.com> <34a43212-ff2b-cbc6-a670-975d39ac9f12@redhat.com>
 <16284400-7c71-ee40-b694-614d6daf21f5@lenovo.com>
In-Reply-To: <16284400-7c71-ee40-b694-614d6daf21f5@lenovo.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Tue, 29 Dec 2020 16:23:29 +0100
Message-ID: <CAJZ5v0je=BeU98tkXmE9Mu1aiqc4=o288S=uOuFwh=okWJC2eQ@mail.gmail.com>
Subject: Re: [External] Re: [pm:bleeding-edge 8612/8615] drivers/acpi/platform_profile.c:147:24:
 warning: address of array 'pprof->choices' will always evaluate to 'true'
To: Mark Pearson <markpearson@lenovo.com>
Cc: Hans de Goede <hdegoede@redhat.com>, kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org, 
	clang-built-linux@googlegroups.com, 
	ACPI Devel Maling List <linux-acpi@vger.kernel.org>, 
	"open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, Linux PM <linux-pm@vger.kernel.org>, 
	"Rafael J. Wysocki" <rjw@rjwysocki.net>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: rafael@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of rjwysocki@gmail.com designates 209.85.167.171 as
 permitted sender) smtp.mailfrom=rjwysocki@gmail.com;       dmarc=fail (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Tue, Dec 29, 2020 at 12:18 AM Mark Pearson <markpearson@lenovo.com> wrote:
>
> Hi Hans
>
> On 27/12/2020 06:56, Hans de Goede wrote:
> > Hi,
> >
> > On 12/27/20 6:11 AM, kernel test robot wrote:
> >> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
> >> head:   a33520709645543f108361fe21fa9434a351c4e9
> >> commit: 8c9b909fb1282e43792433e6c1cba125ccfc6201 [8612/8615] ACPI: platform-profile: Add platform profile support
> >> config: x86_64-randconfig-a015-20201221 (attached as .config)
> >> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project cee1e7d14f4628d6174b33640d502bff3b54ae45)
> >> reproduce (this is a W=1 build):
> >>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >>         chmod +x ~/bin/make.cross
> >>         # install x86_64 cross compiling tool for clang build
> >>         # apt-get install binutils-x86-64-linux-gnu
> >>         # https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git/commit/?id=8c9b909fb1282e43792433e6c1cba125ccfc6201
> >>         git remote add pm https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git
> >>         git fetch --no-tags pm bleeding-edge
> >>         git checkout 8c9b909fb1282e43792433e6c1cba125ccfc6201
> >>         # save the attached .config to linux build tree
> >>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64
> >>
> >> If you fix the issue, kindly add following tag as appropriate
> >> Reported-by: kernel test robot <lkp@intel.com>
> >>
> >> All warnings (new ones prefixed by >>):
> >>
> >>>> drivers/acpi/platform_profile.c:147:24: warning: address of array 'pprof->choices' will always evaluate to 'true' [-Wpointer-bool-conversion]
> >>            if (!pprof || !pprof->choices || !pprof->profile_set ||
> >>                          ~~~~~~~~^~~~~~~
> >>    1 warning generated.
> >
> >
> > Ah, this is caused by changing choices from a single long to:
> >
> >       unsigned long choices[BITS_TO_LONGS(PLATFORM_PROFILE_LAST)];
> >
> > So that we can use for_each_set_bit and are future proof for more then
> > 32 profiles.
> >
> > To fix this the check should be changed into this (untested):
> >
> > #include <linux/bitmap.h>
> >
> >       if (!pprof || bitmap_empty(pprof->choices, PLATFORM_PROFILE_LAST) ||
> >           !pprof->profile_set || !pprof->profile_get) {
> >               mutex_unlock(&profile_lock);
> >               return -EINVAL;
> >       }
> >
> > Mark can you provide a (tested) patch for this?
> >
> > Regards,
> >
> > Hans
> >
> Will do!

Please note that I'm not going to push the material to Linus with this
warning, so if you want it to go into 5.11, that needs to be addressed
timely.

Thanks!

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAJZ5v0je%3DBeU98tkXmE9Mu1aiqc4%3Do288S%3DuOuFwh%3DokWJC2eQ%40mail.gmail.com.
