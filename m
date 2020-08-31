Return-Path: <clang-built-linux+bncBDYJPJO25UGBBHPFWT5AKGQEWG6CJ6Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x638.google.com (mail-pl1-x638.google.com [IPv6:2607:f8b0:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C2B1257F90
	for <lists+clang-built-linux@lfdr.de>; Mon, 31 Aug 2020 19:25:51 +0200 (CEST)
Received: by mail-pl1-x638.google.com with SMTP id o6sf3766027pll.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 31 Aug 2020 10:25:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598894750; cv=pass;
        d=google.com; s=arc-20160816;
        b=oK/lunxwvTZybU9Mhq6iZUqHFjcLdMiBKKoz4/zwgLa5weCXkJHh5kdBReAWuxXwE+
         2V4+2un8QH4sTd7bx7K8YETo4Imm9xbSIpyVlesV/QUY9DhTjNrYRbIYao2mRxbzaZGY
         J9o4WBkWa+cg75gqaL4FJtEDoZ2W4SayBuWtJ8TuSfWZCjC+HKXYCVFnSoK1YGc7XsAU
         i1O4j458W0Zu/xDUtqhFbWITPPLiAZyqDpHwcG8wrrbu8byfQ23PzClQO9YJw36l+Bzq
         5PYnN1E5WJS2pdz/w3SsdYmJFoUAgylvy2GmIXZ5NL90O0LcJhDWNKZ+T+xFl0VQHlXY
         goKQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=e4aXzrzakvBh1pyJ+FVnJKqK7vRszH1EfF03SXJkNdU=;
        b=p8gZIzN2baEoxDl7q4Td8iXho2S/N3Kp5GPZeBBvuXRhD4nlLdlqmRsnTooHVPGXA9
         hwP3cfNfq8Q9U9sg5aHTjd43QRE2IP2LcYvFa3OnwYRNO/0kFytFXR9vI2IL9UaumIC8
         elYoTmNrE3Rm89iz0Oj9Jb+SIPItyJEh/1Md2JPMdK6hJI2/JcbZ+yy1tjMQYB3srBmG
         V6BHrBcrBqiKFwuO+8XPcgEkCqjPIHwLSvG8udTcYeDUhS1UJEm18j2uKldl+z50YTPr
         QxLAW0CPnMTyhN/K3TYP9tDgc4GkCtN/2i9+hY41cVuQ/MP30uhXfPNgA+1ryYa7fTXF
         TSPQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=QLtNRPX7;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=e4aXzrzakvBh1pyJ+FVnJKqK7vRszH1EfF03SXJkNdU=;
        b=DnFceeI5dFUkJX/eVzQ0tA5p9bpM3n1tvZ4+iRQh+hDcWTzloY7e4SCCt5IfQUj4gR
         WK8s66xU8NZKZLFoSOz6WIF5s6gnFDfJpn74TPE+W2zqzc9sLM2MmsWhFkHtCVK9wrVX
         UV5nXbSFw6FgIwzirRHGCJ+OP+IABhBedf1o7Ua4mx+G7klFqklC0fbfxcR96n+vnHuR
         cHRk7Dxnl1Wu0qEIiAq8YFrdT8zT8TC4Jfw1YxRxYlT3aNiNtFm6sxy9a4ho2zHcVftO
         SvBYqOyJ9YVL+cTUifLOvLt6Qv0sPgsWRe0Sf0JfaDVFOqACP4Kdkgy+8Cc9ZeUctrAJ
         5fvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=e4aXzrzakvBh1pyJ+FVnJKqK7vRszH1EfF03SXJkNdU=;
        b=A9dMhCTT+sArTBW0pANDyhuZMzJq0ynvp9W3pBZjEW5is8IWusOkbITRDceBmyKUXR
         2o+XkamCiuOP+gbNHzJSZfwo0Lip8mdQ1Z7GJ7iNoK1X/xQptjlmxugMayy30CXwvzLR
         aTrbD97ch6O17hrzXdT2GB1cXfxBYpvjMmvb02saF1WzoedmGkqaSwD3PNJS8uQcNAm6
         1fW0qD8p/EoW3yPiBN47aDnU+OGp72Ful6ZW0VsxeTaAjfw4e/za1KI0G4HZBW+KneYS
         OYldKAG1Z6ZEYQlsH2RQm88uwFucuq4iXxuoxUOZCr6qkRsZWXD+WN9W11S4AhRsyqxv
         9xPQ==
X-Gm-Message-State: AOAM532oBE6Il1LxVJ/ySJPFrta1Em+7Wzcfc44w7Q4zcoOp/ynDTFri
	S/zzabMxwdOnuHin6n/srf8=
X-Google-Smtp-Source: ABdhPJz3QT2YE2YuyQJmYToPztKqvk57G9DJM5jt/kGIl/tvGH0okevwgoUETmofydgGY1c/OfMeVQ==
X-Received: by 2002:a17:90b:390d:: with SMTP id ob13mr388147pjb.122.1598894750023;
        Mon, 31 Aug 2020 10:25:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:3355:: with SMTP id lm21ls102557pjb.3.canary-gmail;
 Mon, 31 Aug 2020 10:25:49 -0700 (PDT)
X-Received: by 2002:a17:90a:ba04:: with SMTP id s4mr369231pjr.3.1598894749563;
        Mon, 31 Aug 2020 10:25:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598894749; cv=none;
        d=google.com; s=arc-20160816;
        b=blaeFN+wPW2HilAkdDiRQBzZ4vWp14yG3sauqU0SvqM0es20WpFziz4nsb+bgcf/Go
         ISDE7ovSfkn4B7RegWZDyzFz2oHOE8iwZ7+GcuFT/qfHjuC2w8xAOmVMj0sPI6PP+zFB
         l17uxQiIu1jcQN6LuIkMqd7Wc+BvzTnpVbgpuVA/3SZpE1kVOdC49ltK2KsX6h7xFvqr
         gYsxAotGVLrMBq9yzyJEvEbVyd6HMVd7mu3t7sPTl7z0erZUOqHwuKwUDau+lNsrkRQl
         YR+HDtU0YUGUgogieG/Di6Sgq43oc9z4dFDktnOu9xwWHsZrfsqbgsgR0RiQJUpV+nRZ
         7zCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=+/jujZZnqPIUGwUwX42SLwwyiG665Dp91A8h2o6sN8U=;
        b=ClBFa5EuYOGancESHBKvDB5BUCG4x0+yOov7Wn+gZaMW1yfl/i2BtDGoOj+jY4jNp6
         QJsRhwVSLMbHspX6Zx1Jum8DhNo7Q8jwpqinUN4eGDXA05XU49+DwvwQY3LjqCJTizQ4
         sIjO8HuxpXgLi3TJFpgIj+qAZTIhY2MyIMXP84Qq1gneT/twKKfP61P3/N0j5wFSlra1
         qV41t7JoOy141AIIUIKpHcLn/iLdC8QsgI5jKvMrjnPr8wBQ6DreYHRtfqD81qjH7pvu
         BlZfer7guS0/vd6ehD00qbq0BbRCJuRJwe8uM9MXvvQYKHKfBK2FjY9EpJHE2qNKP8yw
         Lrmg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=QLtNRPX7;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com. [2607:f8b0:4864:20::102b])
        by gmr-mx.google.com with ESMTPS id c11si13011pjn.0.2020.08.31.10.25.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 31 Aug 2020 10:25:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102b as permitted sender) client-ip=2607:f8b0:4864:20::102b;
Received: by mail-pj1-x102b.google.com with SMTP id ls14so150609pjb.3
        for <clang-built-linux@googlegroups.com>; Mon, 31 Aug 2020 10:25:49 -0700 (PDT)
X-Received: by 2002:a17:90a:fc98:: with SMTP id ci24mr352757pjb.101.1598894748730;
 Mon, 31 Aug 2020 10:25:48 -0700 (PDT)
MIME-Version: 1.0
References: <202008270229.SO2NVhto%lkp@intel.com> <CAKwvOdnAOE+NCOg3r732UbaQaW474h-zBdKhBZoYRw=yyM1GZA@mail.gmail.com>
 <871rjn36wz.fsf@mpe.ellerman.id.au>
In-Reply-To: <871rjn36wz.fsf@mpe.ellerman.id.au>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 31 Aug 2020 10:25:37 -0700
Message-ID: <CAKwvOdmPhgBJQqMFdxf2-+R7ZVHOSw+Bae3_oigJX-W82i2WOg@mail.gmail.com>
Subject: Re: [linux-next:master 3345/3539] ld.lld: warning:
 drivers/built-in.a(nvme/host/hwmon.o):(.data..compoundliteral) is being
 placed in '.data..compoundliteral'
To: Michael Ellerman <mpe@ellerman.id.au>
Cc: Kees Cook <keescook@chromium.org>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Andrew Morton <akpm@linux-foundation.org>, 
	Linux Memory Management List <linux-mm@kvack.org>, kernel test robot <lkp@intel.com>, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=QLtNRPX7;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102b
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Sun, Aug 30, 2020 at 7:07 PM Michael Ellerman <mpe@ellerman.id.au> wrote:
>
> Nick Desaulniers <ndesaulniers@google.com> writes:
> > On Wed, Aug 26, 2020 at 11:21 AM kernel test robot <lkp@intel.com> wrote:
> >>
> >> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> >> head:   f37be72473a007d5d66c52f6cdf43fc8c0961f95
> >> commit: 5934637641c863cc2c1765a0d01c5b6f53ecc4fc [3345/3539] lib/string.c: implement stpcpy
> >> config: powerpc64-randconfig-r001-20200826 (attached as .config)
> >> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 7cfcecece0e0430937cf529ce74d3a071a4dedc6)
> >> reproduce (this is a W=1 build):
> >>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >>         chmod +x ~/bin/make.cross
> >>         # install powerpc64 cross compiling tool for clang build
> >>         # apt-get install binutils-powerpc64-linux-gnu
> >>         git checkout 5934637641c863cc2c1765a0d01c5b6f53ecc4fc
> >>         # save the attached .config to linux build tree
> >>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc64
> >>
> >> If you fix the issue, kindly add following tag as appropriate
> >> Reported-by: kernel test robot <lkp@intel.com>
> >>
> >> All warnings (new ones prefixed by >>):
> >>
> >>    ld.lld: warning: kernel/built-in.a(trace/trace_syscalls.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
> >
> > We probably need to add `.data..compoundliteral*` to the ppc linker scripts?
>
> Sure looks like it.
>
> Any idea what it is? Can we just fold them into .data ?

Compound literals in C are syntactic sugar; they're anonymous
instances of structs declared inline of an initialization.  They get
emitted as just static struct instances; but clang will emit them in
their own sections, which for the kernel is annoying.  We've been
munging them together via linker script as you suggest, though we did
have an Android OEM claim that was causing issues in their driver
(which I haven't had enough time to investigate). I don't have an
answer to "why does clang emit these in their own section?"  I wonder
if I can simply rip that out...or if there's a good reason I'm not
aware of.  TODO

>
> cheers
>
> >> >> ld.lld: warning: drivers/built-in.a(nvme/host/hwmon.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
> >> >> ld.lld: warning: drivers/built-in.a(nvme/host/hwmon.o):(.data..compoundliteral.13) is being placed in '.data..compoundliteral.13'
> >>    ld.lld: warning: drivers/built-in.a(nvme/host/hwmon.o):(.data..compoundliteral.14) is being placed in '.data..compoundliteral.14'
> >>    ld.lld: warning: drivers/built-in.a(nvme/host/hwmon.o):(.data..compoundliteral.15) is being placed in '.data..compoundliteral.15'
> >>    ld.lld: warning: drivers/built-in.a(media/tuners/tuner-types.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
> >>    ld.lld: warning: drivers/built-in.a(media/tuners/tuner-types.o):(.data..compoundliteral.79) is being placed in '.data..compoundliteral.79'
> >>    ld.lld: warning: drivers/built-in.a(power/supply/power_supply_hwmon.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
> >>    ld.lld: warning: drivers/built-in.a(power/supply/power_supply_hwmon.o):(.data..compoundliteral.3) is being placed in '.data..compoundliteral.3'
> >>    ld.lld: warning: drivers/built-in.a(power/supply/power_supply_hwmon.o):(.data..compoundliteral.4) is being placed in '.data..compoundliteral.4'
> >>    ld.lld: warning: drivers/built-in.a(power/supply/power_supply_hwmon.o):(.data..compoundliteral.5) is being placed in '.data..compoundliteral.5'
> >>    ld.lld: warning: drivers/built-in.a(power/supply/power_supply_hwmon.o):(.data..compoundliteral.6) is being placed in '.data..compoundliteral.6'
> >>    ld.lld: warning: drivers/built-in.a(power/supply/power_supply_hwmon.o):(.data..compoundliteral.7) is being placed in '.data..compoundliteral.7'
> >> >> ld.lld: warning: drivers/built-in.a(hwmon/w83773g.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
> >> >> ld.lld: warning: drivers/built-in.a(hwmon/w83773g.o):(.data..compoundliteral.6) is being placed in '.data..compoundliteral.6'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/w83773g.o):(.data..compoundliteral.7) is being placed in '.data..compoundliteral.7'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/w83773g.o):(.data..compoundliteral.8) is being placed in '.data..compoundliteral.8'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/adm1177.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/adm1177.o):(.data..compoundliteral.9) is being placed in '.data..compoundliteral.9'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/adm1177.o):(.data..compoundliteral.10) is being placed in '.data..compoundliteral.10'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/adm1177.o):(.data..compoundliteral.11) is being placed in '.data..compoundliteral.11'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/adt7411.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/adt7411.o):(.data..compoundliteral.4) is being placed in '.data..compoundliteral.4'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/adt7411.o):(.data..compoundliteral.5) is being placed in '.data..compoundliteral.5'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/adt7411.o):(.data..compoundliteral.6) is being placed in '.data..compoundliteral.6'
> >> >> ld.lld: warning: drivers/built-in.a(hwmon/axi-fan-control.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
> >> >> ld.lld: warning: drivers/built-in.a(hwmon/axi-fan-control.o):(.data..compoundliteral.12) is being placed in '.data..compoundliteral.12'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/axi-fan-control.o):(.data..compoundliteral.13) is being placed in '.data..compoundliteral.13'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/axi-fan-control.o):(.data..compoundliteral.14) is being placed in '.data..compoundliteral.14'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/axi-fan-control.o):(.data..compoundliteral.15) is being placed in '.data..compoundliteral.15'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/axi-fan-control.o):(.data..compoundliteral.16) is being placed in '.data..compoundliteral.16'
> >> >> ld.lld: warning: drivers/built-in.a(hwmon/lochnagar-hwmon.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
> >> >> ld.lld: warning: drivers/built-in.a(hwmon/lochnagar-hwmon.o):(.data..compoundliteral.16) is being placed in '.data..compoundliteral.16'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/lochnagar-hwmon.o):(.data..compoundliteral.17) is being placed in '.data..compoundliteral.17'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/lochnagar-hwmon.o):(.data..compoundliteral.18) is being placed in '.data..compoundliteral.18'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/lochnagar-hwmon.o):(.data..compoundliteral.19) is being placed in '.data..compoundliteral.19'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/lochnagar-hwmon.o):(.data..compoundliteral.20) is being placed in '.data..compoundliteral.20'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/lochnagar-hwmon.o):(.data..compoundliteral.21) is being placed in '.data..compoundliteral.21'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/lochnagar-hwmon.o):(.data..compoundliteral.22) is being placed in '.data..compoundliteral.22'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.7) is being placed in '.data..compoundliteral.7'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.8) is being placed in '.data..compoundliteral.8'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.9) is being placed in '.data..compoundliteral.9'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.10) is being placed in '.data..compoundliteral.10'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.11) is being placed in '.data..compoundliteral.11'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.12) is being placed in '.data..compoundliteral.12'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.13) is being placed in '.data..compoundliteral.13'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.14) is being placed in '.data..compoundliteral.14'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.15) is being placed in '.data..compoundliteral.15'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.16) is being placed in '.data..compoundliteral.16'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.17) is being placed in '.data..compoundliteral.17'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.18) is being placed in '.data..compoundliteral.18'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.19) is being placed in '.data..compoundliteral.19'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.20) is being placed in '.data..compoundliteral.20'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.21) is being placed in '.data..compoundliteral.21'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.22) is being placed in '.data..compoundliteral.22'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.23) is being placed in '.data..compoundliteral.23'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.24) is being placed in '.data..compoundliteral.24'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.25) is being placed in '.data..compoundliteral.25'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.26) is being placed in '.data..compoundliteral.26'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.27) is being placed in '.data..compoundliteral.27'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.28) is being placed in '.data..compoundliteral.28'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.29) is being placed in '.data..compoundliteral.29'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.30) is being placed in '.data..compoundliteral.30'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.31) is being placed in '.data..compoundliteral.31'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.32) is being placed in '.data..compoundliteral.32'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.33) is being placed in '.data..compoundliteral.33'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.34) is being placed in '.data..compoundliteral.34'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/lm95245.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/lm95245.o):(.data..compoundliteral.5) is being placed in '.data..compoundliteral.5'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/lm95245.o):(.data..compoundliteral.6) is being placed in '.data..compoundliteral.6'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/lm95245.o):(.data..compoundliteral.7) is being placed in '.data..compoundliteral.7'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/ltc2947-core.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/ltc2947-core.o):(.data..compoundliteral.24) is being placed in '.data..compoundliteral.24'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/ltc2947-core.o):(.data..compoundliteral.25) is being placed in '.data..compoundliteral.25'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/ltc2947-core.o):(.data..compoundliteral.26) is being placed in '.data..compoundliteral.26'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/ltc2947-core.o):(.data..compoundliteral.27) is being placed in '.data..compoundliteral.27'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/ltc2947-core.o):(.data..compoundliteral.28) is being placed in '.data..compoundliteral.28'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/ltc2947-core.o):(.data..compoundliteral.29) is being placed in '.data..compoundliteral.29'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/ltc2947-core.o):(.data..compoundliteral.30) is being placed in '.data..compoundliteral.30'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/max6650.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/max6650.o):(.data..compoundliteral.15) is being placed in '.data..compoundliteral.15'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/max6650.o):(.data..compoundliteral.16) is being placed in '.data..compoundliteral.16'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/max6650.o):(.data..compoundliteral.17) is being placed in '.data..compoundliteral.17'
> >>    ld.lld: warning: net/built-in.a(ipv6/addrlabel.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
> >>    ld.lld: warning: net/built-in.a(ipv6/addrlabel.o):(.data..compoundliteral.3) is being placed in '.data..compoundliteral.3'
> >>    ld.lld: warning: net/built-in.a(ipv6/addrlabel.o):(.data..compoundliteral.4) is being placed in '.data..compoundliteral.4'
> >>    ld.lld: warning: net/built-in.a(ipv6/addrlabel.o):(.data..compoundliteral.5) is being placed in '.data..compoundliteral.5'
> >>    ld.lld: warning: net/built-in.a(ipv6/addrlabel.o):(.data..compoundliteral.6) is being placed in '.data..compoundliteral.6'
> >>    ld.lld: warning: net/built-in.a(ipv6/addrlabel.o):(.data..compoundliteral.7) is being placed in '.data..compoundliteral.7'
> >>    ld.lld: warning: net/built-in.a(ipv6/addrlabel.o):(.data..compoundliteral.8) is being placed in '.data..compoundliteral.8'
> >>    ld.lld: warning: net/built-in.a(ipv6/addrconf_core.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
> >>    ld.lld: warning: <internal>:(.symtab) is being placed in '.symtab'
> >>    ld.lld: warning: <internal>:(.shstrtab) is being placed in '.shstrtab'
> >>    ld.lld: warning: <internal>:(.strtab) is being placed in '.strtab'
> >>    ld.lld: warning: kernel/built-in.a(trace/trace_syscalls.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
> >> >> ld.lld: warning: drivers/built-in.a(nvme/host/hwmon.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
> >> >> ld.lld: warning: drivers/built-in.a(nvme/host/hwmon.o):(.data..compoundliteral.13) is being placed in '.data..compoundliteral.13'
> >>    ld.lld: warning: drivers/built-in.a(nvme/host/hwmon.o):(.data..compoundliteral.14) is being placed in '.data..compoundliteral.14'
> >>    ld.lld: warning: drivers/built-in.a(nvme/host/hwmon.o):(.data..compoundliteral.15) is being placed in '.data..compoundliteral.15'
> >>    ld.lld: warning: drivers/built-in.a(media/tuners/tuner-types.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
> >>    ld.lld: warning: drivers/built-in.a(media/tuners/tuner-types.o):(.data..compoundliteral.79) is being placed in '.data..compoundliteral.79'
> >>    ld.lld: warning: drivers/built-in.a(power/supply/power_supply_hwmon.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
> >>    ld.lld: warning: drivers/built-in.a(power/supply/power_supply_hwmon.o):(.data..compoundliteral.3) is being placed in '.data..compoundliteral.3'
> >>    ld.lld: warning: drivers/built-in.a(power/supply/power_supply_hwmon.o):(.data..compoundliteral.4) is being placed in '.data..compoundliteral.4'
> >>    ld.lld: warning: drivers/built-in.a(power/supply/power_supply_hwmon.o):(.data..compoundliteral.5) is being placed in '.data..compoundliteral.5'
> >>    ld.lld: warning: drivers/built-in.a(power/supply/power_supply_hwmon.o):(.data..compoundliteral.6) is being placed in '.data..compoundliteral.6'
> >>    ld.lld: warning: drivers/built-in.a(power/supply/power_supply_hwmon.o):(.data..compoundliteral.7) is being placed in '.data..compoundliteral.7'
> >> >> ld.lld: warning: drivers/built-in.a(hwmon/w83773g.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
> >> >> ld.lld: warning: drivers/built-in.a(hwmon/w83773g.o):(.data..compoundliteral.6) is being placed in '.data..compoundliteral.6'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/w83773g.o):(.data..compoundliteral.7) is being placed in '.data..compoundliteral.7'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/w83773g.o):(.data..compoundliteral.8) is being placed in '.data..compoundliteral.8'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/adm1177.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/adm1177.o):(.data..compoundliteral.9) is being placed in '.data..compoundliteral.9'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/adm1177.o):(.data..compoundliteral.10) is being placed in '.data..compoundliteral.10'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/adm1177.o):(.data..compoundliteral.11) is being placed in '.data..compoundliteral.11'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/adt7411.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/adt7411.o):(.data..compoundliteral.4) is being placed in '.data..compoundliteral.4'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/adt7411.o):(.data..compoundliteral.5) is being placed in '.data..compoundliteral.5'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/adt7411.o):(.data..compoundliteral.6) is being placed in '.data..compoundliteral.6'
> >> >> ld.lld: warning: drivers/built-in.a(hwmon/axi-fan-control.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
> >> >> ld.lld: warning: drivers/built-in.a(hwmon/axi-fan-control.o):(.data..compoundliteral.12) is being placed in '.data..compoundliteral.12'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/axi-fan-control.o):(.data..compoundliteral.13) is being placed in '.data..compoundliteral.13'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/axi-fan-control.o):(.data..compoundliteral.14) is being placed in '.data..compoundliteral.14'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/axi-fan-control.o):(.data..compoundliteral.15) is being placed in '.data..compoundliteral.15'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/axi-fan-control.o):(.data..compoundliteral.16) is being placed in '.data..compoundliteral.16'
> >> >> ld.lld: warning: drivers/built-in.a(hwmon/lochnagar-hwmon.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
> >> >> ld.lld: warning: drivers/built-in.a(hwmon/lochnagar-hwmon.o):(.data..compoundliteral.16) is being placed in '.data..compoundliteral.16'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/lochnagar-hwmon.o):(.data..compoundliteral.17) is being placed in '.data..compoundliteral.17'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/lochnagar-hwmon.o):(.data..compoundliteral.18) is being placed in '.data..compoundliteral.18'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/lochnagar-hwmon.o):(.data..compoundliteral.19) is being placed in '.data..compoundliteral.19'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/lochnagar-hwmon.o):(.data..compoundliteral.20) is being placed in '.data..compoundliteral.20'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/lochnagar-hwmon.o):(.data..compoundliteral.21) is being placed in '.data..compoundliteral.21'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/lochnagar-hwmon.o):(.data..compoundliteral.22) is being placed in '.data..compoundliteral.22'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.7) is being placed in '.data..compoundliteral.7'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.8) is being placed in '.data..compoundliteral.8'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.9) is being placed in '.data..compoundliteral.9'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.10) is being placed in '.data..compoundliteral.10'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.11) is being placed in '.data..compoundliteral.11'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.12) is being placed in '.data..compoundliteral.12'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.13) is being placed in '.data..compoundliteral.13'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.14) is being placed in '.data..compoundliteral.14'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.15) is being placed in '.data..compoundliteral.15'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.16) is being placed in '.data..compoundliteral.16'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.17) is being placed in '.data..compoundliteral.17'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.18) is being placed in '.data..compoundliteral.18'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.19) is being placed in '.data..compoundliteral.19'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.20) is being placed in '.data..compoundliteral.20'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.21) is being placed in '.data..compoundliteral.21'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.22) is being placed in '.data..compoundliteral.22'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.23) is being placed in '.data..compoundliteral.23'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.24) is being placed in '.data..compoundliteral.24'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.25) is being placed in '.data..compoundliteral.25'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.26) is being placed in '.data..compoundliteral.26'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.27) is being placed in '.data..compoundliteral.27'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.28) is being placed in '.data..compoundliteral.28'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.29) is being placed in '.data..compoundliteral.29'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.30) is being placed in '.data..compoundliteral.30'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.31) is being placed in '.data..compoundliteral.31'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.32) is being placed in '.data..compoundliteral.32'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.33) is being placed in '.data..compoundliteral.33'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.34) is being placed in '.data..compoundliteral.34'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/lm95245.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/lm95245.o):(.data..compoundliteral.5) is being placed in '.data..compoundliteral.5'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/lm95245.o):(.data..compoundliteral.6) is being placed in '.data..compoundliteral.6'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/lm95245.o):(.data..compoundliteral.7) is being placed in '.data..compoundliteral.7'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/ltc2947-core.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/ltc2947-core.o):(.data..compoundliteral.24) is being placed in '.data..compoundliteral.24'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/ltc2947-core.o):(.data..compoundliteral.25) is being placed in '.data..compoundliteral.25'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/ltc2947-core.o):(.data..compoundliteral.26) is being placed in '.data..compoundliteral.26'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/ltc2947-core.o):(.data..compoundliteral.27) is being placed in '.data..compoundliteral.27'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/ltc2947-core.o):(.data..compoundliteral.28) is being placed in '.data..compoundliteral.28'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/ltc2947-core.o):(.data..compoundliteral.29) is being placed in '.data..compoundliteral.29'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/ltc2947-core.o):(.data..compoundliteral.30) is being placed in '.data..compoundliteral.30'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/max6650.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/max6650.o):(.data..compoundliteral.15) is being placed in '.data..compoundliteral.15'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/max6650.o):(.data..compoundliteral.16) is being placed in '.data..compoundliteral.16'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/max6650.o):(.data..compoundliteral.17) is being placed in '.data..compoundliteral.17'
> >>    ld.lld: warning: net/built-in.a(ipv6/addrlabel.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
> >>    ld.lld: warning: net/built-in.a(ipv6/addrlabel.o):(.data..compoundliteral.3) is being placed in '.data..compoundliteral.3'
> >>    ld.lld: warning: net/built-in.a(ipv6/addrlabel.o):(.data..compoundliteral.4) is being placed in '.data..compoundliteral.4'
> >>    ld.lld: warning: net/built-in.a(ipv6/addrlabel.o):(.data..compoundliteral.5) is being placed in '.data..compoundliteral.5'
> >>    ld.lld: warning: net/built-in.a(ipv6/addrlabel.o):(.data..compoundliteral.6) is being placed in '.data..compoundliteral.6'
> >>    ld.lld: warning: net/built-in.a(ipv6/addrlabel.o):(.data..compoundliteral.7) is being placed in '.data..compoundliteral.7'
> >>    ld.lld: warning: net/built-in.a(ipv6/addrlabel.o):(.data..compoundliteral.8) is being placed in '.data..compoundliteral.8'
> >>    ld.lld: warning: net/built-in.a(ipv6/addrconf_core.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
> >>    ld.lld: warning: <internal>:(.symtab) is being placed in '.symtab'
> >>    ld.lld: warning: <internal>:(.shstrtab) is being placed in '.shstrtab'
> >>    ld.lld: warning: <internal>:(.strtab) is being placed in '.strtab'
> >>    ld.lld: warning: kernel/built-in.a(trace/trace_syscalls.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
> >> >> ld.lld: warning: drivers/built-in.a(nvme/host/hwmon.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
> >> >> ld.lld: warning: drivers/built-in.a(nvme/host/hwmon.o):(.data..compoundliteral.13) is being placed in '.data..compoundliteral.13'
> >>    ld.lld: warning: drivers/built-in.a(nvme/host/hwmon.o):(.data..compoundliteral.14) is being placed in '.data..compoundliteral.14'
> >>    ld.lld: warning: drivers/built-in.a(nvme/host/hwmon.o):(.data..compoundliteral.15) is being placed in '.data..compoundliteral.15'
> >>    ld.lld: warning: drivers/built-in.a(media/tuners/tuner-types.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
> >>    ld.lld: warning: drivers/built-in.a(media/tuners/tuner-types.o):(.data..compoundliteral.79) is being placed in '.data..compoundliteral.79'
> >>    ld.lld: warning: drivers/built-in.a(power/supply/power_supply_hwmon.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
> >>    ld.lld: warning: drivers/built-in.a(power/supply/power_supply_hwmon.o):(.data..compoundliteral.3) is being placed in '.data..compoundliteral.3'
> >>    ld.lld: warning: drivers/built-in.a(power/supply/power_supply_hwmon.o):(.data..compoundliteral.4) is being placed in '.data..compoundliteral.4'
> >>    ld.lld: warning: drivers/built-in.a(power/supply/power_supply_hwmon.o):(.data..compoundliteral.5) is being placed in '.data..compoundliteral.5'
> >>    ld.lld: warning: drivers/built-in.a(power/supply/power_supply_hwmon.o):(.data..compoundliteral.6) is being placed in '.data..compoundliteral.6'
> >>    ld.lld: warning: drivers/built-in.a(power/supply/power_supply_hwmon.o):(.data..compoundliteral.7) is being placed in '.data..compoundliteral.7'
> >> >> ld.lld: warning: drivers/built-in.a(hwmon/w83773g.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
> >> >> ld.lld: warning: drivers/built-in.a(hwmon/w83773g.o):(.data..compoundliteral.6) is being placed in '.data..compoundliteral.6'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/w83773g.o):(.data..compoundliteral.7) is being placed in '.data..compoundliteral.7'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/w83773g.o):(.data..compoundliteral.8) is being placed in '.data..compoundliteral.8'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/adm1177.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/adm1177.o):(.data..compoundliteral.9) is being placed in '.data..compoundliteral.9'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/adm1177.o):(.data..compoundliteral.10) is being placed in '.data..compoundliteral.10'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/adm1177.o):(.data..compoundliteral.11) is being placed in '.data..compoundliteral.11'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/adt7411.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/adt7411.o):(.data..compoundliteral.4) is being placed in '.data..compoundliteral.4'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/adt7411.o):(.data..compoundliteral.5) is being placed in '.data..compoundliteral.5'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/adt7411.o):(.data..compoundliteral.6) is being placed in '.data..compoundliteral.6'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/axi-fan-control.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/axi-fan-control.o):(.data..compoundliteral.12) is being placed in '.data..compoundliteral.12'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/axi-fan-control.o):(.data..compoundliteral.13) is being placed in '.data..compoundliteral.13'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/axi-fan-control.o):(.data..compoundliteral.14) is being placed in '.data..compoundliteral.14'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/axi-fan-control.o):(.data..compoundliteral.15) is being placed in '.data..compoundliteral.15'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/axi-fan-control.o):(.data..compoundliteral.16) is being placed in '.data..compoundliteral.16'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/lochnagar-hwmon.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/lochnagar-hwmon.o):(.data..compoundliteral.16) is being placed in '.data..compoundliteral.16'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/lochnagar-hwmon.o):(.data..compoundliteral.17) is being placed in '.data..compoundliteral.17'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/lochnagar-hwmon.o):(.data..compoundliteral.18) is being placed in '.data..compoundliteral.18'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/lochnagar-hwmon.o):(.data..compoundliteral.19) is being placed in '.data..compoundliteral.19'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/lochnagar-hwmon.o):(.data..compoundliteral.20) is being placed in '.data..compoundliteral.20'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/lochnagar-hwmon.o):(.data..compoundliteral.21) is being placed in '.data..compoundliteral.21'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/lochnagar-hwmon.o):(.data..compoundliteral.22) is being placed in '.data..compoundliteral.22'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.7) is being placed in '.data..compoundliteral.7'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.8) is being placed in '.data..compoundliteral.8'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.9) is being placed in '.data..compoundliteral.9'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.10) is being placed in '.data..compoundliteral.10'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.11) is being placed in '.data..compoundliteral.11'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.12) is being placed in '.data..compoundliteral.12'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.13) is being placed in '.data..compoundliteral.13'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.14) is being placed in '.data..compoundliteral.14'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.15) is being placed in '.data..compoundliteral.15'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.16) is being placed in '.data..compoundliteral.16'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.17) is being placed in '.data..compoundliteral.17'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.18) is being placed in '.data..compoundliteral.18'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.19) is being placed in '.data..compoundliteral.19'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.20) is being placed in '.data..compoundliteral.20'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.21) is being placed in '.data..compoundliteral.21'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.22) is being placed in '.data..compoundliteral.22'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.23) is being placed in '.data..compoundliteral.23'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.24) is being placed in '.data..compoundliteral.24'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.25) is being placed in '.data..compoundliteral.25'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.26) is being placed in '.data..compoundliteral.26'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.27) is being placed in '.data..compoundliteral.27'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.28) is being placed in '.data..compoundliteral.28'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.29) is being placed in '.data..compoundliteral.29'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.30) is being placed in '.data..compoundliteral.30'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.31) is being placed in '.data..compoundliteral.31'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.32) is being placed in '.data..compoundliteral.32'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.33) is being placed in '.data..compoundliteral.33'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/lm75.o):(.data..compoundliteral.34) is being placed in '.data..compoundliteral.34'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/lm95245.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/lm95245.o):(.data..compoundliteral.5) is being placed in '.data..compoundliteral.5'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/lm95245.o):(.data..compoundliteral.6) is being placed in '.data..compoundliteral.6'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/lm95245.o):(.data..compoundliteral.7) is being placed in '.data..compoundliteral.7'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/ltc2947-core.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/ltc2947-core.o):(.data..compoundliteral.24) is being placed in '.data..compoundliteral.24'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/ltc2947-core.o):(.data..compoundliteral.25) is being placed in '.data..compoundliteral.25'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/ltc2947-core.o):(.data..compoundliteral.26) is being placed in '.data..compoundliteral.26'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/ltc2947-core.o):(.data..compoundliteral.27) is being placed in '.data..compoundliteral.27'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/ltc2947-core.o):(.data..compoundliteral.28) is being placed in '.data..compoundliteral.28'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/ltc2947-core.o):(.data..compoundliteral.29) is being placed in '.data..compoundliteral.29'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/ltc2947-core.o):(.data..compoundliteral.30) is being placed in '.data..compoundliteral.30'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/max6650.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/max6650.o):(.data..compoundliteral.15) is being placed in '.data..compoundliteral.15'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/max6650.o):(.data..compoundliteral.16) is being placed in '.data..compoundliteral.16'
> >>    ld.lld: warning: drivers/built-in.a(hwmon/max6650.o):(.data..compoundliteral.17) is being placed in '.data..compoundliteral.17'
> >>    ld.lld: warning: net/built-in.a(ipv6/addrlabel.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
> >>    ld.lld: warning: net/built-in.a(ipv6/addrlabel.o):(.data..compoundliteral.3) is being placed in '.data..compoundliteral.3'
> >>    ld.lld: warning: net/built-in.a(ipv6/addrlabel.o):(.data..compoundliteral.4) is being placed in '.data..compoundliteral.4'
> >>    ld.lld: warning: net/built-in.a(ipv6/addrlabel.o):(.data..compoundliteral.5) is being placed in '.data..compoundliteral.5'
> >>    ld.lld: warning: net/built-in.a(ipv6/addrlabel.o):(.data..compoundliteral.6) is being placed in '.data..compoundliteral.6'
> >>    ld.lld: warning: net/built-in.a(ipv6/addrlabel.o):(.data..compoundliteral.7) is being placed in '.data..compoundliteral.7'
> >>    ld.lld: warning: net/built-in.a(ipv6/addrlabel.o):(.data..compoundliteral.8) is being placed in '.data..compoundliteral.8'
> >>    ld.lld: warning: net/built-in.a(ipv6/addrconf_core.o):(.data..compoundliteral) is being placed in '.data..compoundliteral'
> >>    ld.lld: warning: <internal>:(.symtab) is being placed in '.symtab'
> >>    ld.lld: warning: <internal>:(.shstrtab) is being placed in '.shstrtab'
> >>    ld.lld: warning: <internal>:(.strtab) is being placed in '.strtab'
> >>
> >> ---
> >> 0-DAY CI Kernel Test Service, Intel Corporation
> >> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> >
> >
> >
> > --
> > Thanks,
> > ~Nick Desaulniers



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmPhgBJQqMFdxf2-%2BR7ZVHOSw%2BBae3_oigJX-W82i2WOg%40mail.gmail.com.
