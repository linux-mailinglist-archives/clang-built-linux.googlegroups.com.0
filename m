Return-Path: <clang-built-linux+bncBCS7XUWOUULBBR4QUWBAMGQEYCHIRZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x140.google.com (mail-il1-x140.google.com [IPv6:2607:f8b0:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id 4690F334B97
	for <lists+clang-built-linux@lfdr.de>; Wed, 10 Mar 2021 23:29:28 +0100 (CET)
Received: by mail-il1-x140.google.com with SMTP id r16sf4457388ilj.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 10 Mar 2021 14:29:28 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615415367; cv=pass;
        d=google.com; s=arc-20160816;
        b=H5pMWYGISL0uwpEhgFYVhxCCbhz+VTJNORU7Yxitx2U3IjLd6T0GM8rPMoqZxm2Dz8
         MEzlcnp9582roJ3m27zDl3xOvDCBXRnUDx671l8tI3zWOKKv7sTczufmN6nexKG4vDc4
         7wqpnOVTztm5km+gRASNsW0kFHXmyXuguatgHHYGOuxgXO1BQRu/AJEQ7qR+YRYa3oox
         6khMx/tQomrvG/QfEKdElLCHVipW5rAVYym8swx4wj7GVB7Op1YcG04ZLz4OdCY2D0Yv
         MHoZrTEaDkK5Evzf3uds54cfCQtf9X7i/HQ+1urHcFPhh9E7KS57rGIu2GcspDf+yFPA
         5PtQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:reply-to
         :in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=9KfFcmC4aAd/2FX6d2aqRfL1tynbUawKTv6NDY3OXIY=;
        b=Q9+zckm6SRwH5zi2BOrvzqbYZWv2FanKyfgI02k6t2WGzEcY400HLVKIW8xFfcj/Dl
         x/Rc7V9+p54SUAYfY9QlXJ9KtSOBDyes11C83JxpWGDOE5BCSKX79BMjZMoJ1IurRF5K
         rJLk9viTSGx7pczFJMHe4A/eQMk0mP44Zr65ZvRXvtcFoHi6+1uc0R9cjEsJpi3C7uiw
         pRUIPK5NO3JdT5DfiBO5/hDDS1uAz5fpYtItZEvE5i/m0hpU514HTupV13muR2bZWlAV
         5+dPe2TEnCs+lLNHpO+VQBTTLfH0AjBk2Ch6+YM03yo6IidAn7ZACHhvZcEivbPX2/Mb
         Cj5w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rRAmlYnw;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::52a as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to
         :content-transfer-encoding:precedence:mailing-list:list-id:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9KfFcmC4aAd/2FX6d2aqRfL1tynbUawKTv6NDY3OXIY=;
        b=r56eKz4ZLBu3F7UfVjKs+TfykUQyvk6Z7Jnaa/2Zy6Zqrn3EqyD2F35rmx+mXSK/KH
         U+w30EnvEQLicKR9grTJ6FPWNc8T6UnspWWD0g2X5jUIHCqaHK+FK0uvmUYm/iaj/iT7
         bfGIb0PknlE7TYoTMnbmFwwKd064jF300Mcq/D5lRFK7J8/IdfeAj4JIdJ1SGaRTFxb9
         ZLzvgX8Ls1U0jCPDVt7plk8C38E6HU8+Agg8HYk/dfBsDAhdtL9ZjPHR/tXxENYfJMjF
         39CCfSJQSp48pkiQ3v1iON4bNl4QIZfon9BpVvI+taUrrb/lMW5vALqkLpgFOtRqWczH
         v+jQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to
         :content-transfer-encoding:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9KfFcmC4aAd/2FX6d2aqRfL1tynbUawKTv6NDY3OXIY=;
        b=fW31ZsU/4X4ETj4N6zEnhilrvkXHWNYduTbBK6PD1C8AulPesI2YY97+QqbVnEOF8d
         ZGEnscoNpoNkl/0dJzVPt/tvFooC0D2LSR4iQiAA9lb29uKRjFUalQjIiyqDyaWLhbEK
         Ob0sBOYEl4DXc3dSWHjnzuK0d31z2QjgHuHKYcar2c3alU2p9dxEJCtBd61KNbXEkiVG
         BbhCJVMrnPkeyiCA1hyiNzg892PJ89VzsapReL2pWk2byUIVH7ySSTYzIlQNgqjEZNwD
         nI/LA/e8hh45tlQf6AdnDQkiHnucbaNH7rR3ksI+zJl021ym02kKqMzMex/tAR1nhZpg
         3a5g==
X-Gm-Message-State: AOAM532bVe07i9h9JbJgvqmlFRrnD9COEvwIo06qN78h00dfXMorkJOb
	ZXJF/G5gz/5QhEoBvSqioqM=
X-Google-Smtp-Source: ABdhPJw3CimsUTHy0Di+j2uWf0gEJ/wG9lrL3ZvvM158owxeKhT7hk0uQrq4Sr4K8OqyrMfgJMaLJA==
X-Received: by 2002:a02:7f8c:: with SMTP id r134mr668174jac.95.1615415367261;
        Wed, 10 Mar 2021 14:29:27 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6602:15c8:: with SMTP id f8ls538970iow.6.gmail; Wed, 10
 Mar 2021 14:29:26 -0800 (PST)
X-Received: by 2002:a05:6602:2348:: with SMTP id r8mr4054671iot.77.1615415366921;
        Wed, 10 Mar 2021 14:29:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615415366; cv=none;
        d=google.com; s=arc-20160816;
        b=Ah+ah7HE0aZ97jfsUixmwzptdL8vDXsSv5c7GMIUJW6neC+3gv3vMG8/N+p+NMlG98
         pznC5olPps1LucDR9nruUmylvYKIIVpdI9XawWpizNPTvHpLJn90LuDSEaup6Tlv6cZx
         XT3K5NQCIY4mVstOSJP4cuTAz2Y6u4pa1ZqOgdfsBNCTaAatitK0JDmP36enPghyPI7+
         +79AoyTMJtZ8r655eJD3CPTZAK6Ip86ewk18EPXa5j4NRD6zbtkv+58IG9qQj6U//pkO
         OjN9WnAPw6rz3TSIrOboS2hXY2VfCWA2pdXusO7zD3i5drQaUjuLHkatl4x7405HfjDA
         /zlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=M1LQocdyrILdN3y2ftG88hya3R5bASNZBW6DmO/mx8w=;
        b=igVB2BrgxBe0UPy6PqlZVS/Ts69PaQMOpMzJOJQcsLTXwE9TQkNWcv1aJkMyencTR8
         UpL3opXnRdZq+w2wuJba1m5hMNRdARXXPZvYfYnemq1J1yZP1CPweUBDPS3BHaerYqJt
         00akpM4WUBqOlmg5tb1jUDTq3uGHXO8d6X2NmDEh60l5a8wL+djo7O3lDNyj+je1Wl8n
         iubhkKD4EFKTLAqnAoqwRd2C72F4a6ugN8Wt2X3KO8N7jM3DyTO+CH4IiBHu60UuDs9p
         sD16Bxzj/Tx/uw5afsEut313KaEaBF1MI77QEckr87/crRTXOix8FIFnk2szYMh0bPd7
         TTuA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rRAmlYnw;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::52a as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x52a.google.com (mail-pg1-x52a.google.com. [2607:f8b0:4864:20::52a])
        by gmr-mx.google.com with ESMTPS id p17si69195ilm.3.2021.03.10.14.29.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Mar 2021 14:29:26 -0800 (PST)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::52a as permitted sender) client-ip=2607:f8b0:4864:20::52a;
Received: by mail-pg1-x52a.google.com with SMTP id e6so12355639pgk.5
        for <clang-built-linux@googlegroups.com>; Wed, 10 Mar 2021 14:29:26 -0800 (PST)
X-Received: by 2002:a63:170e:: with SMTP id x14mr4600946pgl.245.1615415366310;
        Wed, 10 Mar 2021 14:29:26 -0800 (PST)
Received: from google.com ([2620:15c:2ce:0:6ded:c9f:3996:6bc8])
        by smtp.gmail.com with ESMTPSA id j21sm450003pfc.114.2021.03.10.14.29.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Mar 2021 14:29:25 -0800 (PST)
Date: Wed, 10 Mar 2021 14:29:21 -0800
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Arnd Bergmann <arnd@kernel.org>, Masahiro Yamada <masahiroy@kernel.org>
Cc: Nicholas Piggin <npiggin@gmail.com>, Ard Biesheuvel <ardb@kernel.org>,
	Andrew Scull <ascull@google.com>, Mark Brown <broonie@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	David Brazdil <dbrazdil@google.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Ionela Voinescu <ionela.voinescu@arm.com>,
	Kees Cook <keescook@chromium.org>,
	Kristina Martsenko <kristina.martsenko@arm.com>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <maz@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Vincenzo Frascino <vincenzo.frascino@arm.com>,
	Will Deacon <will@kernel.org>, Nicolas Pitre <nico@fluxnic.net>
Subject: Re: [PATCH] [RFC] arm64: enable HAVE_LD_DEAD_CODE_DATA_ELIMINATION
Message-ID: <20210310222921.t7tf7cjr7po5dlay@google.com>
References: <20210225112122.2198845-1-arnd@kernel.org>
 <20210226211323.arkvjnr4hifxapqu@google.com>
 <CAK8P3a2bLKe3js4SKeZoGp8B51+rpW6G3KvpbJ5=y83sxHSu6g@mail.gmail.com>
 <1614559739.p25z5x88wl.astroid@bobo.none>
 <CAK7LNATUSJ5T6bs-aA3sMQgXKWfcyWJLDfhmteBhQ5FuUR52Zg@mail.gmail.com>
 <CAK8P3a3yF+JV3+Xq5QtD_59JqxA7akz=u=0t05Gv-isHD9Kv4A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <CAK8P3a3yF+JV3+Xq5QtD_59JqxA7akz=u=0t05Gv-isHD9Kv4A@mail.gmail.com>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=rRAmlYnw;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::52a
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Fangrui Song <maskray@google.com>
Reply-To: Fangrui Song <maskray@google.com>
Content-Transfer-Encoding: quoted-printable
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

On 2021-03-10, Arnd Bergmann wrote:
>On Wed, Mar 10, 2021 at 9:50 PM Masahiro Yamada <masahiroy@kernel.org> wro=
te:
>> On Mon, Mar 1, 2021 at 10:11 AM Nicholas Piggin <npiggin@gmail.com> wrot=
e:
>> > Excerpts from Arnd Bergmann's message of February 27, 2021 7:49 pm:
>
>>
>> masahiro@oscar:~/ref/linux$ echo  'void this_func_is_unused(void) {}'
>> >>  kernel/cpu.c
>> masahiro@oscar:~/ref/linux$ export
>> CROSS_COMPILE=3D/home/masahiro/tools/powerpc-10.1.0/bin/powerpc-linux-
>> masahiro@oscar:~/ref/linux$ make ARCH=3Dpowerpc  defconfig
>> masahiro@oscar:~/ref/linux$ ./scripts/config  -e EXPERT
>> masahiro@oscar:~/ref/linux$ ./scripts/config  -e LD_DEAD_CODE_DATA_ELIMI=
NATION
>> masahiro@oscar:~/ref/linux$
>> ~/tools/powerpc-10.1.0/bin/powerpc-linux-nm -n  vmlinux | grep
>> this_func
>> c000000000170560 T .this_func_is_unused
>> c000000001d8d560 D this_func_is_unused
>> masahiro@oscar:~/ref/linux$ grep DEAD_CODE_ .config
>> CONFIG_HAVE_LD_DEAD_CODE_DATA_ELIMINATION=3Dy
>> CONFIG_LD_DEAD_CODE_DATA_ELIMINATION=3Dy
>>
>>
>> If I remember correctly,
>> LD_DEAD_CODE_DATA_ELIMINATION dropped unused functions
>> when I tried it last time.

--gc-sections drops unused sections.
If the unused function is part of a larger section which is retained due to=
 other symbols (-fno-function-sections),
the unused section will be retained as well.

>>
>>
>> I also tried arm64 with a HAVE_LD_DEAD_CODE_DATA_ELIMINATION hack.
>> The result was the same.
>>
>>
>>
>> Am I missing something?
>
>It's possible that it only works in combination with CLANG_LTO now
>because something broke. I definitely saw a reduction in kernel
>size when both options are enabled, but did not try a simple test
>case like you did.
>
>Maybe some other reference gets created that prevents the function
>from being garbage-collected unless that other option is removed
>as well?
>
>         Arnd

I believe with LLVM regular LTO, --gc-sections has very little benefit
on compiler generated sections. It is still useful for assembly generated s=
ections
(but most such sections are probably needed):

* Target specific optimizations can drop references on constants (e.g. `mem=
cpy(..., &constant, sizeof(constant));`)
* Due to phase ordering issues some definitions are not discarded by the op=
timizer.

For ThinLTO there are more compiler generated sections discarded by `--gc-s=
ections`:

* ThinLTO can cause a definition to be imported to other modules. The origi=
nal definition may be unneeded after imports.
* The definition may survive after intra-module optimization. After imports=
, a round of (inter-module) IR optimizations after `computeDeadSymbolsWithC=
onstProp` may make the definition unneeded.
* Symbol resolution is conservative.

Regarding symbol resolution, symbol resolution happens before LTO and LTO h=
appens before --gc-sections. The symbol resolution process may be conservat=
ive: it may communicate to LTO that some symbols are referenced by regular =
object files while in the GC stage the references turn out to not exist bec=
ause of discarded sections with more precise GC roots.

(I've added the above points to my https://maskray.me/blog/2021-02-28-linke=
r-garbage-collection#link-time-optimization )

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20210310222921.t7tf7cjr7po5dlay%40google.com.
