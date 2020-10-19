Return-Path: <clang-built-linux+bncBCG4XTWK4QLBBRPYWX6AKGQEIXHK3QQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93f.google.com (mail-ua1-x93f.google.com [IPv6:2607:f8b0:4864:20::93f])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FD612926A4
	for <lists+clang-built-linux@lfdr.de>; Mon, 19 Oct 2020 13:45:10 +0200 (CEST)
Received: by mail-ua1-x93f.google.com with SMTP id k5sf1437023uag.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 19 Oct 2020 04:45:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603107909; cv=pass;
        d=google.com; s=arc-20160816;
        b=VfG7WOHdAaF4x0hVrzgrdyv7gTphmxClbFWXe9s8MvcC8pI60FDDY1p2BHHsxlbYvk
         aJNaGkmAnwY69b6ytRviwVLuEa+Tdmo+bbYa/8N11cLSlSu71zbxWN/RYJ2iHhzGMsQE
         E/NHqDvKC9feqpo7b7YIKRj2LEsrgV0k4fI0XAMDAH2NSGog2s+AKYR00oBCEd6yDAXc
         iIbVwOdTdyE6/cTm15c66M+ZSTUo2HFc5kIZDXMEdmPY03L3PYLH2eFe9ffM1GPuxPZe
         XCVqBDmSC7P5Ov979P/Qg7TFQ+8tZNqk5KOvAL78maN+bB5UnpJWRa1ep0J2np/Btn/K
         55bA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:organization
         :references:in-reply-to:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=+jFALdlE9P6s6/D7lj5hRfNs2fIAVl16tYjvmjBSZzQ=;
        b=Nww4F0nBeyKFChahTfavnZpsLYO2r/yOgdBJZKpfDlDyK5FcDDqaqENPCyBBi4ugIc
         bbgoBFZwV79VUflggnd8wVj+1HYWlV4mwwy/4uyggWFiGq/s/bhmei+EsrQ2BcpRI+Lp
         /ISRu5r7ccm2FBHlx2j/wzR21zV8pLnHXnCRDHvKd0S8y2zWhjMR42TTXSCxwC2md/3m
         HKpRMHA1ijj9FlfiMgmHf3UfzyBQ22/DobuTIdnAq3kIA3kfjDn82pavzRbCgxNibKBJ
         vfIR3K9b6DJaCfwKO8WmYtUs7poq0lcq74Nh+zcEhSqEcr6nq3NQOa8eWYZ65VU2DG0r
         wAVA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=PEuOGKUz;
       spf=pass (google.com: domain of cohuck@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=cohuck@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :organization:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+jFALdlE9P6s6/D7lj5hRfNs2fIAVl16tYjvmjBSZzQ=;
        b=B/OcXD2AHICtCxSxQupPXhn96wxni+KGbkVS/d8y0ollcxH4dM88IBxMzXT0HU4C76
         ITXP5mIUalDPw8+jwtuJ+xQy7v6t4h+kvDEnrGrPtIrm9XNRUHox+/4eiItdan3ktlHK
         wkTKZ2r/l7ukFI3/9uA8cWPyHUUHL9xBSFEtEmIbMwfKkYd2MFXrFdsTWeD0SK4xEGsx
         INmAujaj2TKmGYnq4b9otv8egZoub4HLh5Dk4sgkERM2efYfdD4o1fuMZtYuGh+vHe+4
         67ptLj4HvzOzyiiqa+nOZKF6Z94/8kKgqLrJVbSjbCkFQorR5PSDL8AWy/kOGrzsLxVm
         7+jA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:organization:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+jFALdlE9P6s6/D7lj5hRfNs2fIAVl16tYjvmjBSZzQ=;
        b=ZN4PEbHVfylFSBovzFLFB16X0LDvkLDpGnUJV+n8nf+8y+724MnsXhdMvWG0nm0FBO
         TGZC7AX1kX2gBhSFkjHkogMjmGwmeF4PiYTwdClLOgmF+ewUKtnLhmU6qU1y2qSnjcpd
         Ey1quN9SDlKo2t/TpHaBdoKnF/qJ6uFcjDhcc3URN+MGOUEeTp+hfwQFKpJk/L1/TSKh
         eySNE6qi3r9kCZnGKxbHaevOgOhpCVVF6biZsgjwGHMx13WiE4tC3KXz1p0exuUSK75K
         lhqNTghzt3mzo6wYlzaaAWAy/20NXBz9vKO1PVChzyoFkAt7yB8v1yWoMLxDg6grrhzq
         ZSpQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532nQOwbEmGXIZ+YHKg1mOB6wD0DAHYuIlD7D0dQoS0aw2fis3W/
	5a4kNRS+7sX/G9HX82arn6w=
X-Google-Smtp-Source: ABdhPJxEsAjSTXJ6Nlj5G5CoSAdvyYTCqSXTeioFQ4iP5vnYwHgQApj/WPMKzUxHmKwvKnvvVzgnyg==
X-Received: by 2002:ab0:14e5:: with SMTP id f34mr1870817uae.18.1603107909208;
        Mon, 19 Oct 2020 04:45:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:ff04:: with SMTP id v4ls1110792vsp.0.gmail; Mon, 19 Oct
 2020 04:45:08 -0700 (PDT)
X-Received: by 2002:a67:d79b:: with SMTP id q27mr8233598vsj.31.1603107908709;
        Mon, 19 Oct 2020 04:45:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603107908; cv=none;
        d=google.com; s=arc-20160816;
        b=hsCLhbKBu2I6UwWAw8rbR6OMdyiyzfKAK6m1BRcyLeToWUErHA2ziIT7p1iAWBnUfT
         WhzIF0onB/elaqwWB3MFM0uHo0DO7eMet09f3cQRO2GbEFNXJaKPPZ9KgP/JWW2cKglJ
         1gcMe1rNrBMDn/11tGWy9itoqPKk02G/ib6oY8kcPqx1T6P+drDONT7vLpv0i99bfxD2
         ZrCip5ARjFltLF6HsdSUyuGy7wtsX8gnF6QTGZIxa6STGicaIbJNR1+8NSLzzJBRaZQh
         33Foyg1IuEuhWBkgzkSXJTRHOEoGB6QTVeKuwcGsDy6SsXfd2FUpd4/8TlgepKYF/A7G
         YRDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=9MhPh8Vfa3e/5KEXVGAJdVdkMkQHofFaBZvRbNELhvM=;
        b=z0CKPg/s+sd3EhKmw31DaXXKtrk85IiMs4KIzI68yHhXuuZAYFftdbpOu5JVuHBfr6
         aNq1z30eL7ohgnUFL2DyPtTXt8axD6LKdkx7EDQj+l0+nuyxGAj4Ev82bnTp3dSZAzvF
         aguNZLAzk2q1he71w4oGepYIEF/qfxBF4BWGqMwVEbNkpc+aTUD8dn7f46nXZbfiJTsW
         Vqrhm4843BaaYFiSMt2GY1xXi3ejFc9Op+0HEcPl6YiIMyz+uP541MjchWITxYyfoJck
         eplkDE+dS2PHzldXDHwvonVxmti0OdNjTqaERAHtZgZJXtNMorTnrmKzqI9SwkOkdewm
         RgVg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=PEuOGKUz;
       spf=pass (google.com: domain of cohuck@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=cohuck@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id e21si588216vsj.2.2020.10.19.04.45.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Oct 2020 04:45:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of cohuck@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-359-55wiP8rZPaai-BJMuRA9bw-1; Mon, 19 Oct 2020 07:45:03 -0400
X-MC-Unique: 55wiP8rZPaai-BJMuRA9bw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 655EA1074646;
	Mon, 19 Oct 2020 11:45:01 +0000 (UTC)
Received: from gondolin (ovpn-115-105.ams2.redhat.com [10.36.115.105])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 3B1F81002382;
	Mon, 19 Oct 2020 11:44:59 +0000 (UTC)
Date: Mon, 19 Oct 2020 13:44:56 +0200
From: Cornelia Huck <cohuck@redhat.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Guenter Roeck <linux@roeck-us.net>, egorenar@linux.ibm.com, Vasily
 Gorbik <gor@linux.ibm.com>, Joel Stanley <joel@jms.id.au>, Ulrich Weigand
 <Ulrich.Weigand@de.ibm.com>, clang-built-linux
 <clang-built-linux@googlegroups.com>, Nathan Chancellor
 <natechancellor@gmail.com>, linux-s390 <linux-s390@vger.kernel.org>
Subject: Re: s390 - buildroot + qemu
Message-ID: <20201019134456.21a7bda9.cohuck@redhat.com>
In-Reply-To: <CAKwvOdmnr0qqJTg+cU5KJ2-nJQgTY-8AraZQHXZUw0KNZKE4fg@mail.gmail.com>
References: <CAKwvOd=0nOhK4KoLb1_Jni5u3ENDx10QeAxfYcSbtFQs77FxAw@mail.gmail.com>
	<30b7bea6-1135-609b-f1e5-a4f243e1dcc1@roeck-us.net>
	<CAKwvOdmnr0qqJTg+cU5KJ2-nJQgTY-8AraZQHXZUw0KNZKE4fg@mail.gmail.com>
Organization: Red Hat GmbH
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Original-Sender: cohuck@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=PEuOGKUz;
       spf=pass (google.com: domain of cohuck@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=cohuck@redhat.com;
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

On Fri, 16 Oct 2020 16:40:43 -0700
Nick Desaulniers <ndesaulniers@google.com> wrote:

> On Fri, Oct 16, 2020 at 4:18 PM Guenter Roeck <linux@roeck-us.net> wrote:

> > Maybe that helps ? From my builders:
> >
> >     # qemu only supports MARCH_Z900. Older kernels select it as default,
> >     # but newer kernels may select MARCH_Z196.
> >     sed -i -e '/CONFIG_MARCH_Z/d' ${defconfig}
> >     sed -i -e '/HAVE_MARCH_Z/d' ${defconfig}
> >     echo "CONFIG_MARCH_Z900=y" >> ${defconfig}
> >     echo "CONFIG_PCI=y" >> ${defconfig}  
> 
> $ clang -march=z900 --target=s390x-linux-gnu -c -x c /dev/null -o -
> error: unknown target CPU 'z900'
> note: valid target CPU values are: arch8, z10, arch9, z196, arch10,
> zEC12, arch11, z13, arch12, z14, arch13, z15
> 
> Hopefully qemu supports something newer than Z900? 

Current QEMU/TCG with the 'qemu' cpu model with give you a
stripped-down z13 that should run fine if you compile to z13. (There's
work ongoing to bump this even to a stripped-down z14, but that needs
some more time.) Anything prior to z13 should be fine as well.

> Or can we change
> arch/s390/Kconfig:255 to use a different arch? Is arch9 == z900???:

My understanding is arch8 == z10 and so on.

> 
> 252 config MARCH_Z900
> 253   bool "IBM zSeries model z800 and z900"
> 254   select HAVE_MARCH_Z900_FEATURES
> 255   depends on $(cc-option,-march=z900)
> 256   help
> 257     Select this to enable optimizations for model z800/z900 (2064
> and
> 258     2066 series). This will enable some optimizations that are not
> 259     available on older ESA/390 (31 Bit) only CPUs.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201019134456.21a7bda9.cohuck%40redhat.com.
