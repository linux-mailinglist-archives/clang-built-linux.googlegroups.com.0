Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBOP6WH7AKGQED5BNRGI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 046B02D0140
	for <lists+clang-built-linux@lfdr.de>; Sun,  6 Dec 2020 07:50:35 +0100 (CET)
Received: by mail-pf1-x43c.google.com with SMTP id w135sf2895226pff.1
        for <lists+clang-built-linux@lfdr.de>; Sat, 05 Dec 2020 22:50:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607237433; cv=pass;
        d=google.com; s=arc-20160816;
        b=r17rNE9uk99HKr4yOyYGLB7O4VOM6LjHNN6+xmjZRFOULQMZZmil2VRU1FJ+oOdi7r
         73XFm68Blto34FQF9hTfvQMKHHIKF4p7wUXeWz2sUztKbudukkH7zaLEMakocKGfpDrb
         WYmAxTZYedYYRn7So21utK8fG1Ra1M0hOu+G+2cPA2krKhgz971jr+2pS9+BI470ygcQ
         MjJYjqwOzGHhWU1ezt/7pcdERYMXYMJ8g/mvkfwXGe3p6z5boUggG7vFJDNEhAiyHhsG
         qpzvl0ayaepI4CsRKS8DhJ7Lp1+d0+lOm+QJu+gHazUGNPGOwvP7ttMrzPa6pFKZbxKs
         oANg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=Lie/YCAp3KqtuiIpVVR1jkiWVnbRP0qovoXQ72oPF3w=;
        b=kofjWcYTIIsgMReeuIiBwhqV5rgZrV0yQi34gGmb55C7ujuhJcwrKJaSH3eqdZQl7k
         BzP/86+AnpM2LS67YrP7FAfkZ3341qI/NP2PFBStO3CSSBZMHRmTQplSuNDlsusBtP5h
         VmwThXzx28EaAnpK4QVBxXwC0z3ZK+k3akECZBudKVQDOqTImXGL9ba0xi/NMvrGVLpF
         bH4leFG0AEeeh2vYbmhYEnlePA7DirP34KegVrjspN38gNqwqoWvjPSOdBPPdv1Fg8eG
         7HYzVROxm2LeK4N0lX11sucbYXyZi+VUmT0OsiBZhvvcGoL9SvO1heEhhgmfrWFPoPXT
         LriQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DzK6LtMp;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::d43 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Lie/YCAp3KqtuiIpVVR1jkiWVnbRP0qovoXQ72oPF3w=;
        b=iXiLkRmR26G+nL6OwtNj3AquroRJXxhJFq/260atsULSl/FUt6PdAF/8HsUpMGX/zM
         GcMAik+26nc9XV3trwyyC970Km+HKekN8hmmXXq7LPSXveBWVlVw9yyXes3na2nC1iIN
         rbqtSeTvr6OXGN9c8tylQaO4YDxi34pXMQUXSNrZTT7rl58RUUS1T7n5t0DnO+wIFefN
         sLxMjjl3oUDngXTwog+qncIfcwHDcesVIFLxUYeW138YpCrwLTJzhptgYEPy/sh4wYcr
         ka6CKsqJL1Bj6J+VYUl7SrtIVayOqbw5XCZNW6R5cxmL3q0aKPD7t/g7otO8XyA67eqE
         zFTA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Lie/YCAp3KqtuiIpVVR1jkiWVnbRP0qovoXQ72oPF3w=;
        b=PMh47+CIwA0l2N6DVp7U+WHPXRQ8iYsuxFLMpqiQE/7Gdu60RUtcdOO/i/EKiYWh7U
         4rUUOmr+NnNd4NqF8tnrsEhyhl61pM/QuJNwASjQAJPttW9Gm4pMUtjbZN40NWmAvJR+
         /MDCMkXfgK7LzDkdGeWmARJJHz+7UJlAQ8eefMLTj+fjHJ3U+S2hKfVQYmpSkiWHU2S7
         oOZ4BI9hmioj0O4Sc0ezwrQm6/cjY3SQm0AhQ3znSH1JeP8bqjGi0vC91sX2D6cO7kzp
         tneSb61Zk83yNm5FuscjaNgHrJ1/xkuzg0Q53icDEmcvB38pYtzO+n00rpbXxWuh2hC3
         lskg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Lie/YCAp3KqtuiIpVVR1jkiWVnbRP0qovoXQ72oPF3w=;
        b=DhLmYXWnSbq5M18jDWZmex8OtMBmmTje9OgaOJcGWd1jNxy8Dmz97sW0mpKILItVcK
         v9WHKr+Pv28n6oigUTmtxcFrgswecCXCL+w8dHYTnm5IAwkZwHZcp1O4wjzH4Zj1dO/P
         4harw/sGZPyL4yw8qnpI4v3Vt76qcudRDecgFDDH0QumcL/JrhSSd4HgvPIQWZoRrFgg
         ZSB2jvVTWavHtvALLELHwL6mJ2C+DXEG9j5QknoIHZaxZPSfT/bsNVFyCvfyzVUdIMFq
         fvt678nLwEppa0AXi4X9VHmgVYSod+ZSktHc1ljHctJiRkkyQ9n9FS+gnZqS0EI+kn3i
         kcug==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530DATutSw/Y1qPCZc6WCswtDuoTxgW9U1XKX96dTjG8ncwb8TtH
	U19PbcBD/xVBRJETy+En1Ic=
X-Google-Smtp-Source: ABdhPJxdmdhblWo5Bfy1k6XYuZzg7fSemZIJ7cpzqxn5Z2OiKMJMuESAh50hcZCUm4G2sldgZb4Wng==
X-Received: by 2002:a17:90a:68c3:: with SMTP id q3mr11076485pjj.135.1607237433311;
        Sat, 05 Dec 2020 22:50:33 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:490c:: with SMTP id p12ls2145108pgs.1.gmail; Sat, 05 Dec
 2020 22:50:32 -0800 (PST)
X-Received: by 2002:a63:d543:: with SMTP id v3mr14001246pgi.188.1607237432722;
        Sat, 05 Dec 2020 22:50:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607237432; cv=none;
        d=google.com; s=arc-20160816;
        b=0yFyxtKEp4jEqlrXMZiBbpBGFk+x/VYCLF2O6n8wKu/8qj2V/xjAmQzm235mYncW52
         91FuEo90tQUeyno8CVeV86B+nWrDnVrMnjqaOp6mb3hrkUChlbRXsjtLyQhfluH68sHC
         RH6ulatgxEqlt1CqPoB4HFD8rJGHGm+OdRS47uyJP/tUSQH2vgwrzciuu4fMSWJyeepS
         86duzWX5IGiJVjZZWdlpPH7IUnIKbMS1alu4znR2bJyFc2a9U+VaNNjBHhygFQQVLJUw
         SOkvPkO13V6eizgZ9Ant4avIFB56TRVo1tkDP7K5m0DHu2KWAEnT3pR9N9DJh9AOdRsW
         rdWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=xEFX9m1tSvdSJQ3/EiaRpiuUqPA/jqJsIXCgLkJIHTI=;
        b=ZeCa/BGJjp++a2M06RIN5c3e0XIxdRUorOJk2UGTeuhthQd0KqoLWC/LJ8bK6Vx5lD
         SyqBudaOocGhH5lUxoOCPbKwt/15B9YSehsi+lNPZgHaZryNQLu3fq8Uzi2UN/CFuhn4
         cYQivwmGFNrah92QrsPQYa7m9kDEXAwmpV7uQzZ660dpssTi+VBKy/CCsrXvxzv6eAMB
         FmHhmpiSSfQqgmhrzODuDmHAysM3ojbneJxxiJHASBzeKKGh2eI6JVZtSq0a31QgG2Qv
         OoKMU+jvDRuy6A14bCncP2FGr6rD27zhGWXN6hc7kVwRGWHj1jwsktJn960T40FZrXH2
         RKIA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DzK6LtMp;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::d43 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd43.google.com (mail-io1-xd43.google.com. [2607:f8b0:4864:20::d43])
        by gmr-mx.google.com with ESMTPS id mp23si411682pjb.1.2020.12.05.22.50.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 05 Dec 2020 22:50:32 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::d43 as permitted sender) client-ip=2607:f8b0:4864:20::d43;
Received: by mail-io1-xd43.google.com with SMTP id n4so10140267iow.12
        for <clang-built-linux@googlegroups.com>; Sat, 05 Dec 2020 22:50:32 -0800 (PST)
X-Received: by 2002:a5d:958b:: with SMTP id a11mr13034197ioo.160.1607237432100;
        Sat, 05 Dec 2020 22:50:32 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id v23sm4068308iol.21.2020.12.05.22.50.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 05 Dec 2020 22:50:30 -0800 (PST)
Date: Sat, 5 Dec 2020 23:50:28 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Will Deacon <will@kernel.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Steven Rostedt <rostedt@goodmis.org>,
	Josh Poimboeuf <jpoimboe@redhat.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Kees Cook <keescook@chromium.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Kernel Hardening <kernel-hardening@lists.openwall.com>,
	linux-arch <linux-arch@vger.kernel.org>,
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
	linux-kbuild <linux-kbuild@vger.kernel.org>,
	LKML <linux-kernel@vger.kernel.org>,
	PCI <linux-pci@vger.kernel.org>, Jian Cai <jiancai@google.com>,
	Kristof Beyls <Kristof.Beyls@arm.com>
Subject: Re: [PATCH v8 00/16] Add support for Clang LTO
Message-ID: <20201206065028.GA2819096@ubuntu-m3-large-x86>
References: <20201201213707.541432-1-samitolvanen@google.com>
 <20201203112622.GA31188@willie-the-truck>
 <CABCJKueby8pUoN7f5=6RoyLSt4PgWNx8idUej0sNwAi0F3Xqzw@mail.gmail.com>
 <20201203182252.GA32011@willie-the-truck>
 <CAKwvOdnvq=L=gQMv9MHaStmKMOuD5jvffzMedhp3gytYB6R7TQ@mail.gmail.com>
 <CABCJKufgkq+k0DeYaXrzjXniy=T_N4sN1bxoK9=cUxTZN5xSVQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CABCJKufgkq+k0DeYaXrzjXniy=T_N4sN1bxoK9=cUxTZN5xSVQ@mail.gmail.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=DzK6LtMp;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::d43 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Fri, Dec 04, 2020 at 02:52:41PM -0800, Sami Tolvanen wrote:
> On Thu, Dec 3, 2020 at 2:32 PM Nick Desaulniers <ndesaulniers@google.com> wrote:
> >
> > So I'd recommend to Sami to simply make the Kconfig also depend on
> > clang's integrated assembler (not just llvm-nm and llvm-ar).
> 
> Sure, sounds good to me. What's the preferred way to test for this in Kconfig?
> 
> It looks like actually trying to test if we have an LLVM assembler
> (e.g. using $(as-instr,.section
> ".linker-options","e",@llvm_linker_options)) doesn't work as Kconfig
> doesn't pass -no-integrated-as to clang here. I could do something
> simple like $(success,echo $(LLVM) $(LLVM_IAS) | grep -q "1 1").
> 
> Thoughts?
> 
> Sami

I think

    depends on $(success,test $(LLVM_IAS) -eq 1)

should work, at least according to my brief test.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201206065028.GA2819096%40ubuntu-m3-large-x86.
