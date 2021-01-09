Return-Path: <clang-built-linux+bncBCSJ7B6JQALRBQVV477QKGQEUZIYUOA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3c.google.com (mail-qv1-xf3c.google.com [IPv6:2607:f8b0:4864:20::f3c])
	by mail.lfdr.de (Postfix) with ESMTPS id BAB092F01A2
	for <lists+clang-built-linux@lfdr.de>; Sat,  9 Jan 2021 17:33:07 +0100 (CET)
Received: by mail-qv1-xf3c.google.com with SMTP id v1sf10528573qvb.2
        for <lists+clang-built-linux@lfdr.de>; Sat, 09 Jan 2021 08:33:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610209987; cv=pass;
        d=google.com; s=arc-20160816;
        b=FETgfFPP1WjpcFQlVxa/xe/aH6YPMbB/QHVQHutDU+7X7kWkLPl0YAl8mp0nMvfjvi
         3ZV02BUceyy+0zjTeopEY4XoYQgkgn+5JBWWTodDKfmrQsTE0GYyBvlGLV0TPHbyVETt
         AwZPc+zpqA+5B239F3VlZN3AHufvqK+el/mRJ5XrUvnWPXFND9bPtyx1njdiSipt9YGS
         fWK/1SRhMwPiRAypemwrvHxr3du1V9dCzjUazxOOT41I02QSS1YNWBan6ORLsmJbPhw0
         ZToJj6X8Uayxo81Hd5DHaqK4/slx0Gsi4VEWI7EphEQwCE9xc8gXbBTgxF4MHBnGR7Tw
         N7pA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=GzJnmy77o6eWgHLPVdt8b73ID5fW03ppTPHHIejtyp0=;
        b=wqgOLF5E1UuccQnWvU1MGWIT3Dj14FFDCg6zmDbXRmt9IDvjGIzVhcxE4eh8/gXTBf
         ujdccw4RSUOnjbOVmzOH9phgh7Y4Jv/CeGtuxfJjm3FD4xZPmb8MtfQ6me4r8aSFCJ0O
         +UBoKmZMq5K36E7SfwFkRSkA4N1QswclGpLnixTGPSPQWOHlvS8CvuEdrp/TPGwPsiiS
         B42wYm5Dg5ZlAchwqmyz4nnxfKcbEob3UJHIHoVan75YGmuHml6ojhy08sLHYtlg5W2R
         meXgRnmZdFlq8uh20B6efZdFEONd00kaJ5DGkwa7CdPRORTn5fbvcZKLk+43/jr25rMA
         rp6w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=bcEnqCVP;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GzJnmy77o6eWgHLPVdt8b73ID5fW03ppTPHHIejtyp0=;
        b=lFywn3YA2lG8vLwyCeYuo+ExIsOg9clKIE0C3PdTL9ze7FpQ7d7HO7y5HPbsLGqIcb
         0z8XqGpXN9O8ZJkwgkAWKEJtmD94SwgZ4IkH46DpsJxjQFmU9F6+55qPiNdNV0cu5Ajh
         ovnbR+9YCXtRpqduMc0HzaYKOQuXd9lF3dWYS5a6Bxdemb5rZQINtoyBd8OtmHR7O0LL
         VvbHaCxsvdwVT+6Cp4Ju3RxXuLnWcjZ9ny1cJEujGvdfPOFx0k2Ig6OpCMXL7YDqp4oR
         hxJCzyiD/wwSl5QZeRUXrcKM5PFmCOURm8EGT/iFaKEQkdHxAvUH1o90vA64YzwXPDlu
         vUJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GzJnmy77o6eWgHLPVdt8b73ID5fW03ppTPHHIejtyp0=;
        b=rc9sRp78UwGZ3HNta3kJM88yre07m+z35iLC3QcKKqcJ0VJLdx2QlShN9ElYBZ8KnE
         1h1eS43OPUOf/lOpsIiyMmujfCr1nGuTEHzGFSzFZvxUcFIWyBsXMTF1M27UXpPsRa1g
         JQ0CvCUd4N6JdzIPiAWI4j91Tbn0l9nPGDxR8LeUJ++mvKz6nEKl4qE9beJpowD/LT3e
         y+uA8uDWpy8IR8XuX//V36/A7+cd4cUY7lmdld2h9du4V1MS0+Q3RxMw25+/QIehGeVl
         sXb4vimqKLllXHXUjAn6HOU9vwZH5orcxZNONyVZusX774fYlADw3/Avl2fYg05O8eHi
         bdKw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530HDEKmVoFk2GvriKV6GFvoYm7osbC7j+hNKUqsUPus1gqEKty0
	82Ea7HVyc5UcbpSYpxF/99A=
X-Google-Smtp-Source: ABdhPJzruZlYe/4FmSfSH3CSdOGxB+vBTQR8mZgZxnbSbfhtdK6zwUU8pmZ9TMHmlq1tv+h2No4oYA==
X-Received: by 2002:a37:9d14:: with SMTP id g20mr9289259qke.260.1610209986846;
        Sat, 09 Jan 2021 08:33:06 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:242:: with SMTP id q2ls7341513qkn.9.gmail; Sat, 09
 Jan 2021 08:33:06 -0800 (PST)
X-Received: by 2002:ae9:e119:: with SMTP id g25mr9391406qkm.124.1610209986402;
        Sat, 09 Jan 2021 08:33:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610209986; cv=none;
        d=google.com; s=arc-20160816;
        b=QGwJ6o9NRJeXbPc50GMsM0EIEJoZQR2lDqC2oEmIwuSHrZJX9l3xjfBcUfDv5vCrQg
         aMsvLlWEMxR9wbCYHsoxbTh00viob3jOJI4NQEbP9w8gFuqxL3RWT1pidlrJp4/s3lVT
         UnZHa2yLGNNy2gmwnlrQWYOxq7O0Zcrd+UJWTL3odJCfLPQLlA+CXwuasVVMDqS2UpGk
         6Kxu+7vprkCemCqHhiXiiaIjrG91nZIOYXQ/afxtldBGK9PVrwlRlkQngUI2BHHDaef5
         4WsSe9hlm52rQscxibMzFccr95TunNxhRZQ00F0khHwROCDs0kPJW0bwZ494UzrxBisy
         hTDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=N4LWfpJc6jpinLV5977gRkGzupeL+O5/UzxgtGo5uQo=;
        b=T4ZFTxJW7nTm9X4PfO0JyjRbp9oF/5V+3YwxqN9WeLGIsoTsGM3k/MK2VrmHLcwYs9
         UitxiCEOl+jGBoEHafGaDDvEr2niSM1QAdnz/fikJysiDbnn2TmPARLK/+phi+tN66uj
         7YWzY69XmVyRgRb322g4lv4LSYEsDb+94UvapyLLsbSseCaPWjyH6xiMA+9kS+BtRiNX
         ktdPfMkGJAYQvjUmzBgtt+gz7Vg8mvkGuffZzAXwEtLza7fYTwx5djCDSnlhy/KhLDdp
         vJl5y21KfeXo0Fbg4LuKK/r6AQ4qEitNQN3JJOFXawT5n5ol9okUU9W01a9ZFgiG0cUk
         VzHw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=bcEnqCVP;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by gmr-mx.google.com with ESMTPS id z94si1876961qtc.0.2021.01.09.08.33.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Jan 2021 08:33:06 -0800 (PST)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-150-rKKz2IqhPGaW8lF3ScipBQ-1; Sat, 09 Jan 2021 11:33:02 -0500
X-MC-Unique: rKKz2IqhPGaW8lF3ScipBQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CFA8B15720;
	Sat,  9 Jan 2021 16:32:59 +0000 (UTC)
Received: from treble (ovpn-120-156.rdu2.redhat.com [10.10.120.156])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0291E5D9D3;
	Sat,  9 Jan 2021 16:32:57 +0000 (UTC)
Date: Sat, 9 Jan 2021 10:32:56 -0600
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Sami Tolvanen <samitolvanen@google.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Steven Rostedt <rostedt@goodmis.org>, Will Deacon <will@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>,
	kernel-hardening@lists.openwall.com, linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org
Subject: Re: [PATCH v9 00/16] Add support for Clang LTO
Message-ID: <20210109163256.3sv3wbgrshbj72ik@treble>
References: <20201211184633.3213045-1-samitolvanen@google.com>
 <CA+icZUWYxO1hHW-_vrJid7EstqQRYQphjO3Xn6pj6qfEYEONbA@mail.gmail.com>
 <20210109153646.zrmglpvr27f5zd7m@treble>
 <CA+icZUUiucbsQZtJKYdD7Y7Cq8hJZdBwsF0U0BFbaBtnLY3Nsw@mail.gmail.com>
 <20210109160709.kqqpf64klflajarl@treble>
 <CA+icZUU=sS2xfzo9qTUTPQ0prbbQcj29tpDt1qK5cYZxarXuxg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <CA+icZUU=sS2xfzo9qTUTPQ0prbbQcj29tpDt1qK5cYZxarXuxg@mail.gmail.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=bcEnqCVP;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates
 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
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

> > > Did you push it (oh ah push it push it really really really good...)
> > > to your remote Git please :-).
> >
> > I thought I already pushed it pretty good ;-) do you not see it?
> >
> > git://git.kernel.org/pub/scm/linux/kernel/git/jpoimboe/linux.git objtoo=
l-vmlinux
> >
> > d6baee244f2d =E2=80=94 objtool: Alphabetize usage option list (3 weeks =
ago)
> > c0b2a6a625ac =E2=80=94 objtool: Separate vmlinux/noinstr validation con=
fig options (3 weeks ago)
> > 84c53551ad17 =E2=80=94 objtool: Enable full vmlinux validation (3 weeks=
 ago)
> > e518ac0801cd =E2=80=94 x86/power: Support objtool validation in hiberna=
te_asm_64.S (3 weeks ago)
> > d0ac4c7301c1 =E2=80=94 x86/power: Move restore_registers() to top of th=
e file (3 weeks ago)
> > d3389bc83538 =E2=80=94 x86/power: Convert indirect jumps to retpolines =
(3 weeks ago)
> > 7a974d90aa40 =E2=80=94 x86/acpi: Support objtool validation in wakeup_6=
4.S (3 weeks ago)
> > 6693e26cd6cc =E2=80=94 x86/acpi: Convert indirect jump to retpoline (3 =
weeks ago)
> > 0dfb760c74d1 =E2=80=94 x86/ftrace: Support objtool vmlinux.o validation=
 in ftrace_64.S (3 weeks ago)
> > 89a4febfd7bf =E2=80=94 x86/xen/pvh: Convert indirect jump to retpoline =
(3 weeks ago)
> > b62837092140 =E2=80=94 x86/xen: Support objtool vmlinux.o validation in=
 xen-head.S (3 weeks ago)
> > 705e18481ed9 =E2=80=94 x86/xen: Support objtool validation in xen-asm.S=
 (3 weeks ago)
> > 3548319e21b9 =E2=80=94 objtool: Add xen_start_kernel() to noreturn list=
 (3 weeks ago)
> > 6016e8da8c3d =E2=80=94 objtool: Combine UNWIND_HINT_RET_OFFSET and UNWI=
ND_HINT_FUNC (3 weeks ago)
> > 56d6a7aee8b1 =E2=80=94 objtool: Add asm version of STACK_FRAME_NON_STAN=
DARD (3 weeks ago)
> > 68259d951f1a =E2=80=94 objtool: Assume only ELF functions do sibling ca=
lls (3 weeks ago)
> > 0d6c8816cf91 =E2=80=94 x86/ftrace: Add UNWIND_HINT_FUNC annotation for =
ftrace_stub (3 weeks ago)
> > 24d6ce8cd8f6 =E2=80=94 objtool: Support retpoline jump detection for vm=
linux.o (3 weeks ago)
> > 8145ea268f16 =E2=80=94 objtool: Fix ".cold" section suffix check for ne=
wer versions of GCC (3 weeks ago)
> > b3dfca472514 =E2=80=94 objtool: Fix retpoline detection in asm code (3 =
weeks ago)
> > b82402fa5211 =E2=80=94 objtool: Fix error handling for STD/CLD warnings=
 (3 weeks ago)
> > 1f02defb4b79 =E2=80=94 objtool: Fix seg fault in BT_FUNC() with fake ju=
mp (3 weeks ago)
> > 2c85ebc57b3e =E2=80=94 Linux 5.10 (4 weeks ago)
> >
>=20
> I already have this one in my patch-series - I hoped you pushed
> something new to your objtool-vmlinux Git branch.
> That is what I mean by shortened... <jpoimboe.git#objtool-vmlinux>.
>=20
> Hey, it's based on Linux v5.10 - I can test this with Linux v5.10.6 :-).

This is the most recent version of the patches.  I only pushed them this
morning since you said the prior version wasn't applying on Sami's
clang-cfi branch.  This version rebases fine on 'clang-cfi'.

--=20
Josh

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20210109163256.3sv3wbgrshbj72ik%40treble.
