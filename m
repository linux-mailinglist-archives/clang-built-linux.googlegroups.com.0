Return-Path: <clang-built-linux+bncBCS7XUWOUULBBIVIQ33AKGQEBRORSEY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13c.google.com (mail-il1-x13c.google.com [IPv6:2607:f8b0:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id EC4351D6C79
	for <lists+clang-built-linux@lfdr.de>; Sun, 17 May 2020 21:44:35 +0200 (CEST)
Received: by mail-il1-x13c.google.com with SMTP id g13sf1931721ild.16
        for <lists+clang-built-linux@lfdr.de>; Sun, 17 May 2020 12:44:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589744674; cv=pass;
        d=google.com; s=arc-20160816;
        b=jS2EmJCr8jpCPPR2CfdGSzM+p35GXYuUsh1J/ZfkKDKtlCbv3K6GNz0gsLjo+JkqYO
         liv6uKB7W284+kPWSymIOjm3106Dmtz0CsXrLIDA/HGNMXQGbqdKaTWbUsKVnVsnQoUp
         W6WbE35n0HPJs3Nndm4BJ5YYsm4uz4LS4lC4fRkXJdM9v4mUzSWpm8ecCBzylUkUZw8D
         BMLQCPIZiC6j8XPbf1M0tcNOuOrT2hF5i1DASsXivnY9VgnZoLuBb+5tqUHYSBlvE5I4
         z4dz6nxv2//+MRi7OHGWFRzZb4QNOF2OEZacGOT6DNyrEdCEwrerB4HRYPNBq9YpyA3c
         UXrg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=niANh0hZg0q7igQryMjrmbRfJNsP2dwIDYB4HXffDbs=;
        b=YVx35DZNz3O2dEK5meCy5IbE+xEKbYxAjP7hca7o7bxmt11pNVRgFB62W1zlfNWYkR
         jhZxuuhhRGitMe9hTNSxpYqAovmwDuGOkfEPqHwRgwxeCYNj8sOTjxTUZciG53z+PmR9
         3xWuGir0sYfF0Nu5Oe/2H8KtJ7/RL6eLwIvkjWXMq6KCAMzkFyd3d+ij1KiGq0Gq6INr
         uvnfZTV3O8dTNP/ZISvV/9dY8JCxu1mvjzcF3CaI+6ZuB5sRokEqggIZbmPpcw37OGrA
         YoCCdHtU5+Qe3mqEw4qzMkRBavobRAouV7EJtx1s67Ca4/JXdSRqlWACMO0xwXL82E/o
         LJWQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=QHWK6PzJ;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=niANh0hZg0q7igQryMjrmbRfJNsP2dwIDYB4HXffDbs=;
        b=KNWL1/SdVH5rEK0QCQE3iFTNPL7kcmKf5F/3CzjOAkVzpFppbkz8ycJe07ypYJdYMl
         R9AXVzh+ymCvBwxabyjEPbvDc8vCknUg8Uatj9XcVZTsjbONllefMihL1AwPVMSixqyN
         ahKU10q2NVfMGrKKTvzLqBCzgoLkp/Jx+GTQGlt9xPFk6fipV7l1hj0U4aEwA7FamPrJ
         nw60XuN4yCMfR54MTR9F5KWAM4CWhAUcKLYJJs3gKS8ZAiAkKIWFWIoyWAqnBfQCkfJM
         Thhz/8jkKLa6c0EPfIztgo6jvKvM7l4KjKyym9LTRRl/UkxN0me0K0AGahbjuoau3m83
         aUDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=niANh0hZg0q7igQryMjrmbRfJNsP2dwIDYB4HXffDbs=;
        b=lI7r9oLr8tNie5SY+UxulzLVg1sDaycTHMBc91rV6ZLhwBLLLmoDmSvj3z7Do9/V7W
         pbZZOzYvyTW7nCcAU2tVQH10PR4XolZJQjYpRYUcgvUwnRYOk+/aK6rcb4vnewlcGJ7/
         6ty5veJPeCbeSW90PssCEbh0gX4TnLZ4rNzmAyJIahPy9tsLyrYpx7YakmoiT2NXuGkc
         drqqDxtDBHdGsvl91X3IqnSUSKFLpQ0GdLCbsKftT1YzqvM5VEYflq8jkSmg/z2mLKTU
         PTYsg01vUVI4J3qCLXp1K280AeWecUVcx2E4C6GQUi4wkma5CdbpFH9ZBA0j8Q84fGJi
         HECQ==
X-Gm-Message-State: AOAM533+IHrPpG6Cekw7vQWwsYKRdJ9MhDdOAB9u7+TyZX+KKWYKAeNa
	CMIuI8OFRPnlJkLO6/aNTbs=
X-Google-Smtp-Source: ABdhPJz3h2DK68a5kVrob9xBA6Ehli3ap8eD4oVLMsAO86UF8SlkLASPMvdDyr9WlOwVb+er6sRUig==
X-Received: by 2002:a92:d989:: with SMTP id r9mr13115964iln.30.1589744674693;
        Sun, 17 May 2020 12:44:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5e:820b:: with SMTP id l11ls1158030iom.1.gmail; Sun, 17 May
 2020 12:44:34 -0700 (PDT)
X-Received: by 2002:a6b:b24c:: with SMTP id b73mr11554883iof.63.1589744674344;
        Sun, 17 May 2020 12:44:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589744674; cv=none;
        d=google.com; s=arc-20160816;
        b=mgOdUT9tujF/XH5h5GF13dxXA+tHXB3NOkFiT4B0BsSy8UUHwEFxeO6qryIXSW1f+5
         eMNqolonPQB4JvjFPUhJbXqAz1c8ZFPGi/hpLWsQYH50XG4q9xMV2I8DZyChvGTr1w36
         BOLqfxbx1NCeu6p0xAeQqVND3ymfG7Gz66QIqAbkzOtNzXP6OeIrSnPQwC4bL8824jH+
         ld9o2Vb+LRoZXPF9F0mtH+eJny3dcDSEOeBtkNQAQZEnNO3q79WPiYxUzflSRuUKkYaL
         IzQ2oLSO9ZFXM3JFlXZruAY+bh0oeOhil1hOPGxaxv71SFVyuMUr+j0rqoHsKcmsdq1O
         rgUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=rw0Ndp5myB1Bal+4CE0r9ds1UFnKxD+e83Qnd9thPnk=;
        b=jYz3O2gCR5uLMO60XAYYBH1xpN8gWZTSeogR7PRcczc/KFR9zvldOgeohXgH2KCy1t
         BfcRFLAGux78ootoZoPAFenJhxJHsKllndnNSM2YFNrUcwcLk2TwiOo7PWBI5TdHsBxw
         SgDYzTUHwesi+iusz74FgaAqdBYtj4TaAUp8Qr/Tn5owIkPlMFFxtKc3QNfeJLp3nQn0
         7jLcWbnXmpcEM74u2jf4Wwqs84dNOSViz0MJR5it2qCenZdfMaihqzU2CY2Q62/72SG9
         a8J3vI66q3+vxxl3dJX5ojjZRXBDt09uyUe3+x7C9lOnTJqH24hzCcqk49ud4k5DE49t
         hrqQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=QHWK6PzJ;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id s66si639627ild.2.2020.05.17.12.44.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 17 May 2020 12:44:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Received: by mail-pj1-x1042.google.com with SMTP id s69so3943014pjb.4
        for <clang-built-linux@googlegroups.com>; Sun, 17 May 2020 12:44:34 -0700 (PDT)
X-Received: by 2002:a17:90b:1004:: with SMTP id gm4mr16090867pjb.35.1589744673401;
        Sun, 17 May 2020 12:44:33 -0700 (PDT)
Received: from google.com ([2620:15c:2ce:0:9efe:9f1:9267:2b27])
        by smtp.gmail.com with ESMTPSA id s102sm6669508pjb.57.2020.05.17.12.44.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 17 May 2020 12:44:32 -0700 (PDT)
Date: Sun, 17 May 2020 12:44:29 -0700
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Dmitry Golovin <dima@golovin.in>
Cc: Borislav Petkov <bp@alien8.de>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, "x86@kernel.org" <x86@kernel.org>,
	"H. Peter Anvin" <hpa@zytor.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Daniel Kiper <daniel.kiper@oracle.com>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] x86/boot: allow a relocatable kernel to be linked with
 lld
Message-ID: <20200517194429.scwhfr4l4bv4h3ux@google.com>
References: <20200501084215.242-1-dima@golovin.in>
 <20200515185051.GC19017@zn.tnic>
 <602331589572661@mail.yandex.ru>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <602331589572661@mail.yandex.ru>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=QHWK6PzJ;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1042
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Fangrui Song <maskray@google.com>
Reply-To: Fangrui Song <maskray@google.com>
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

On 2020-05-16, Dmitry Golovin wrote:
>15.05.2020, 21:50, "Borislav Petkov" <bp@alien8.de>:
>>
>> I need more info here about which segment is read-only?
>>
>> Is this something LLD does by default or what's happening?
>>
>
>Probably should have quoted the original error message:
>
>    ld.lld: error: can't create dynamic relocation R_386_32 against
>    symbol: _bss in readonly segment; recompile object files with -fPIC
>    or pass '-Wl,-z,notext' to allow text relocations in the output

Do we know where do these R_386_32 come from?

When linking in -shared mode, the linker assumes the image is a shared
object and has undetermined image base at runtime. An absolute
relocation needs a text relocation (a relocation against a readonly
segment).

When neither -z notext nor -z text is specified, GNU ld is in an
indefinite state where it will enable text relocations (DT_TEXTREL
DF_TEXTREL) on demand. It is not considered a good practice for
userspace applications to do this.

Of course the kernel is different....... I know little about the kernel,
but if there is a way to make the sections containing R_386_32
relocations writable (SHF_WRITE), that will be a better solution to me.
In LLD, -z notext is like making every section SHF_WRITE.

>>
>> IOW, don't be afraid to be more verbose in the commit message. :)
>>
>
>Tried both BFD and LLD for linking to understand the difference more and
>rewrite the commit message, and came to the conclusion that the patch is
>wrong. I will submit v2 when I figure out the correct solution.
>
>Regards,
>Dmitry
>
>-- 
>You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
>To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
>To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/602331589572661%40mail.yandex.ru.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200517194429.scwhfr4l4bv4h3ux%40google.com.
