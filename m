Return-Path: <clang-built-linux+bncBDRZHGH43YJRB6GPVP4QKGQEEHKR4VI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23c.google.com (mail-lj1-x23c.google.com [IPv6:2a00:1450:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FCCF23CCE3
	for <lists+clang-built-linux@lfdr.de>; Wed,  5 Aug 2020 19:10:17 +0200 (CEST)
Received: by mail-lj1-x23c.google.com with SMTP id f13sf3682635ljj.15
        for <lists+clang-built-linux@lfdr.de>; Wed, 05 Aug 2020 10:10:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596647416; cv=pass;
        d=google.com; s=arc-20160816;
        b=eB3WOS9QZS2yt+PC2oUCzmRKvUvcMN5riBbSSNYwrdOsr7jGjowaOG4gHSbUySGzDP
         qWrkJZ+QsyjLXplzQD8KLQx4slk3nzGEHlHrYrYwfU2Vh4OIQ8KAh+bMo4O7AKDb7W4B
         RY8hyRVaUHcucDqfSRxLJ+Cojmi8yJlcsnA6bPdapurpx4B9588r3XbZ+wuqSzFiCAYV
         p+6J13tUhH4LJ2rBwTu1a4/7LiSaW4OEyqy+WIdVRkFDM5jkDOqgRTqLEpw7Yq5PsD16
         8FN7d5SQEWh5CApazCqcQG+WmKgYhiHPcMFZnWvGFEs+Ov8AkTSRk1txm7+A+ZUwIlbI
         JAnA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=83nHQXM5A2jg16NCjWvM5YgwfWXM7V1FJu0/JBWYpX0=;
        b=E0Rf8An1rmKqp0D466O7jSxQeEuSJ1vVOarpTdyRYhuyydu9/cXLF1Gk2/ihTadKOS
         Ce8XVEDDNga4JjzRb74b2/HCvhhQ6EijRniw1VhgXYOf9jHtR85WB9psbCYAdXoGM12T
         opMJiEoZdxznyoSnFQ2eae1/4UBrcKiyToEjepLUW4bODY1TEsU2nAl7vUGkjoLrHI51
         a5mAcPbY0oKN9h7gooe+NY4ewcbI/uqp7ftQu6rVp/fGqNj92IOr/MRIIOfIEzxmeDBg
         ZpeGp5YZMv+aezHUwB5Ro25yUC+6DYfK3tnH73lKC3T6ICH53DZZAchLIHy5f56GPKQY
         kjlA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RdzmbMML;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::142 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=83nHQXM5A2jg16NCjWvM5YgwfWXM7V1FJu0/JBWYpX0=;
        b=WE5J5GI4y73wFMIFAPVNBFXwu+ONWoZi8lYGyPyqHKJJL3L3xbfrR9uh+lxcekZJJC
         mWqnPevhw7Yo37UkDv5g0IY+i/hVJRYzraTreoxhIi5G2+ujPQ0TUqhF9Zc0+q2Wjcov
         1SQI3irigEUAeoseZiiMbSfwAJmeF2Ni5z5a+nyGtzdnRhgVY2hx6y3LjqwfJ6iVIldr
         /4i2tjZoOuFBFUzk6a1StIYPrZYHGW1uVhrHMUxwtqhyikPUyXbQGqbXZFwJw26vPsnB
         N7+oJChnQRBduvFjrDWoQ3tYoPwX4lgxNVr5GYxkbgMeNBLA3M2qH8dMqUXKk8XLj2WL
         PgbQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=83nHQXM5A2jg16NCjWvM5YgwfWXM7V1FJu0/JBWYpX0=;
        b=FjUIwHGgN0e3Qqc8TR4ELJqL1vMT8S0pPVnRhRdXlhNj6VkrTUk2JngWd6OLbYZ6kC
         WGaECb9qE0WEI7yr5D63nbcB+1vMKgkNvs3XDqIOJl8oEuzgRT6FhXIhP1a2otebBB82
         4LGWlaUU2+FiGjchbojXO3bviIiJ4f2K/oMlBpldbqNx3JHn92bJUk6oYbzM1X8U5h3/
         1Blgk1Dam/1G1ooZYN3KHMn9G+T7E8Wa1TVDGhU1nG6yq0nrxqBU8e7MWn/6pyd5RRAi
         YXggn5JhIiefTVtFZBdLMnW5xdwc6eYdkryn35SulpVlFzeel19ousof3te8O9TI3BX4
         /mTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=83nHQXM5A2jg16NCjWvM5YgwfWXM7V1FJu0/JBWYpX0=;
        b=capLCcOCdZwuOlnANRDtfgLrId94Wz+xZ6xPBTLAFkmj2fywF8zowhPLULGddFMKNj
         iXct10f5/GlS7/3vd8ivIhx3SU5tZC35CZrykAWpQ56+W63SJUXVDBEaIrmlRiA8HGTR
         JlKj2jnne3sGhC9WDOqy4+Tkm9zwGLmN8FYPK6ZWfF/9KTu+OUofTcdncHc9iKxdGacI
         kKJkRTkjYme6tc1v1VSm7HTCAL75BDOHWRjcTgCAZYtaySyMTw+cTB1m/UBMza0YLC7s
         1aQCpH5K55wYkArHbO5VYP/4fjkTqaTKZSrCO+DBOBcMmZQksSRXlCcFnMk1M7gdOmJv
         QzUA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Jxpqmz2todyH31XNHUJh+qkf1+RTWcknahY6t4XBZHnQr10Vn
	XHDpw1kKP63gxTZ2X6JsqPU=
X-Google-Smtp-Source: ABdhPJyUun1MrFEAeczae+tOh7uS4fTiiYdPwd7kJdIJQTBRWQu1xbIJGmc5770SvO6GOIxknCzRVA==
X-Received: by 2002:a2e:752:: with SMTP id i18mr2029077ljd.428.1596647416682;
        Wed, 05 Aug 2020 10:10:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9dd2:: with SMTP id x18ls596650ljj.5.gmail; Wed, 05 Aug
 2020 10:10:16 -0700 (PDT)
X-Received: by 2002:a2e:b5a5:: with SMTP id f5mr2049816ljn.114.1596647415964;
        Wed, 05 Aug 2020 10:10:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596647415; cv=none;
        d=google.com; s=arc-20160816;
        b=IK/kCuELF1MKQO+8RqWmN5hpkXpz3GS13g0y/m2arWMReXy4RHGBDAFWtX6WFIQZ1Z
         l0LH5leDr891UyDVAXQ9KEtoxI9PodVJJIDE8E/TfQng759Jlo064LmHwskObLel/iwp
         6jAr5PdYdznF03UmyX0wD4qbzVBds9Zx8j8fnlxkaCv34Ki+TnJmP1jfU2ZWGXXiNVq8
         qBHIFhjx/CCkwV2F4osZen+0oSGewyFajJ4SM8xdOKSuTOF/1Gs992xHTa1oGjFEIdhU
         zWov9LDupvJTY05366WH7LwoPoR4NHvzi8MFUvOn2CWDWXaUreAxK3DzUnHMTqbUJ54A
         /XzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=q+69HNPUBLn+0j8xa7ztNqSpAC3bH5kdSFM7se7mw/Y=;
        b=jEbVVPd3HUzw5/l+BbTIKkL34YeHSVI5kPxLG6v3Y+1I+oSjn5fFNvGCA7o3slI6MS
         sfroLcsuLAdEXLVzFho6rRO5Im/6gwXEm4kaNokitWCsgc4TnAqRGvnpCa9niu7UxfTf
         G1mYpGHQDJvLWhMTGfvECIf5qX3ZoOu+LobuSBnej84uKZNEauEuRzsML7DuvSrcxuGz
         zb6BDQDl74DngTNaDK49gJFv87+jkMPVelRCXylu7p2f/75YrsDkXYSoFl89aSEamo9f
         ERpMdzOxe4S1BAZTzdZZ7rVj2pvTZnTwcQG3cZvkFzrgbO9SqrGlJZqR+fdvrUJYVTQv
         KT7w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RdzmbMML;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::142 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lf1-x142.google.com (mail-lf1-x142.google.com. [2a00:1450:4864:20::142])
        by gmr-mx.google.com with ESMTPS id z21si146010ljn.0.2020.08.05.10.10.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Aug 2020 10:10:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::142 as permitted sender) client-ip=2a00:1450:4864:20::142;
Received: by mail-lf1-x142.google.com with SMTP id i80so24638290lfi.13
        for <clang-built-linux@googlegroups.com>; Wed, 05 Aug 2020 10:10:15 -0700 (PDT)
X-Received: by 2002:a05:6512:3b7:: with SMTP id v23mr2064439lfp.10.1596647415748;
 Wed, 05 Aug 2020 10:10:15 -0700 (PDT)
MIME-Version: 1.0
References: <20200802163601.8189-1-rppt@kernel.org> <20200802163601.8189-18-rppt@kernel.org>
In-Reply-To: <20200802163601.8189-18-rppt@kernel.org>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Wed, 5 Aug 2020 19:10:04 +0200
Message-ID: <CANiq72kaw7EMePMbgYyKMCkBC+7CgERq4FV2Lp-fH+ea3H12vg@mail.gmail.com>
Subject: Re: [PATCH v2 17/17] memblock: use separate iterators for memory and
 reserved regions
To: Mike Rapoport <rppt@kernel.org>
Cc: Andrew Morton <akpm@linux-foundation.org>, Andy Lutomirski <luto@kernel.org>, 
	Baoquan He <bhe@redhat.com>, Benjamin Herrenschmidt <benh@kernel.crashing.org>, 
	Borislav Petkov <bp@alien8.de>, Catalin Marinas <catalin.marinas@arm.com>, Christoph Hellwig <hch@lst.de>, 
	Dave Hansen <dave.hansen@linux.intel.com>, Emil Renner Berthing <kernel@esmil.dk>, 
	Ingo Molnar <mingo@redhat.com>, Hari Bathini <hbathini@linux.ibm.com>, 
	Marek Szyprowski <m.szyprowski@samsung.com>, Max Filippov <jcmvbkbc@gmail.com>, 
	Michael Ellerman <mpe@ellerman.id.au>, Michal Simek <monstr@monstr.eu>, 
	Mike Rapoport <rppt@linux.ibm.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Paul Mackerras <paulus@samba.org>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Peter Zijlstra <peterz@infradead.org>, Russell King <linux@armlinux.org.uk>, 
	Stafford Horne <shorne@gmail.com>, Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>, 
	Yoshinori Sato <ysato@users.sourceforge.jp>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, iommu@lists.linux-foundation.org, 
	linux-arch <linux-arch@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, linux-c6x-dev@linux-c6x.org, 
	linux-kernel <linux-kernel@vger.kernel.org>, linux-mips@vger.kernel.org, 
	Linux-MM <linux-mm@kvack.org>, linux-riscv@lists.infradead.org, 
	linux-s390@vger.kernel.org, linux-sh@vger.kernel.org, 
	linux-xtensa@linux-xtensa.org, linuxppc-dev@lists.ozlabs.org, 
	openrisc@lists.librecores.org, sparclinux@vger.kernel.org, 
	uclinux-h8-devel@lists.sourceforge.jp, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=RdzmbMML;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2a00:1450:4864:20::142 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Sun, Aug 2, 2020 at 6:41 PM Mike Rapoport <rppt@kernel.org> wrote:
>
>  .clang-format                  |  3 ++-

The .clang-format bit:

Acked-by: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72kaw7EMePMbgYyKMCkBC%2B7CgERq4FV2Lp-fH%2Bea3H12vg%40mail.gmail.com.
