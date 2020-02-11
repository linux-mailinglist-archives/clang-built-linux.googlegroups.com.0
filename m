Return-Path: <clang-built-linux+bncBDYJPJO25UGBBA7BRPZAKGQEEZ4B5NA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x340.google.com (mail-ot1-x340.google.com [IPv6:2607:f8b0:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id B294C15983F
	for <lists+clang-built-linux@lfdr.de>; Tue, 11 Feb 2020 19:20:52 +0100 (CET)
Received: by mail-ot1-x340.google.com with SMTP id b21sf7441376otq.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 11 Feb 2020 10:20:52 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581445251; cv=pass;
        d=google.com; s=arc-20160816;
        b=Krq0qF484Lom4CVoXrgee3IfAFCBIZWozIgZHiAadRp/OpqIU7Z387De+Yxwr7aoIY
         0uMa8A9bkx0hrUoXo209CYBGa5ODoIsacPR2z45soyx9CvFDGx0r6556W20l1MUJibIW
         n+8xjBwisZx0Sh+FqxTz37hSge+o3a1Z/ncDWMmjWc2jv93vFript5DXr3alqB5yHW26
         JiIehBYIdqY6d8QOuZZc8+hBiUoluApnhWDD577dmcl9jnBotb3EQ7yHJ1rOyjj6Wn/C
         kHlTHQ26DEVF16tMLNq4UIjHMqbbgaMGkXH09t7Q/+wwZQgG10DkQObGYCgxQ0j2dHm+
         dKng==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=VBLRQFUNwCVmQt/U0+pNRD1LgO2SoiS3uerHN4Jhq+k=;
        b=DJET6tT43lgwpThxpgJmqsjgY2uiELssdmg8NR1Y7bUJDIm3MXGrZxnLsJyNZES0H4
         uB3oc/Am5840K7wxzxDtsergNeoPkLASl3H4mSv4Htp5Cq3YJnAy34cG8NFn/1Jun0kS
         d3p0wPF3FTD1Mf5FuUgZ0gqXEizUprQJfHgMIaKAqhjwlhIaiAsbAZO6j76yjIPJWAzx
         +4K0hPC3HDGWtkxzRcNAM1cdwcc/6/5i9LyUiiYxT9IJMI5batsdkf7Tz1cnnbmWFiE5
         FptJoL9ppXcdAXCjWOiaxLX1CRR4pziOWu7BZ0cFt34NikeFt66XJXHJlYB82bqfxmbw
         jjMQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=lDSRjevb;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VBLRQFUNwCVmQt/U0+pNRD1LgO2SoiS3uerHN4Jhq+k=;
        b=O/Rb4LfPRvWamS/6sZrnOTSaSqODrl6oeGm6yz9SPVwXuWorKMz9Nlk2Qh9pogLLCM
         ZHrzRSMY4Mkb/r1Dc89Lzp7jBiJfIS5QfvZx2GpsuWbPAeBu97nwOOGIUdFo3v/NK7Oy
         Fzm9D/Lnt12c2Q8vP5eY71cpt6a8iRJvFDtBJZAudGDSXWouAFmwOI5Ssm4POL8nfFyM
         Ux6O0WkCN8h5WshRLrNsnXGmWNFEYXmKELNAnYqUJNs58c4qP9GAF0bGa6LMW1jXn0ya
         jh9J14A5A8r/PNYQYmWFFXpBgqZQdtkwbSqpLbpCFuZZUWeIJpqIAGkU5eif9r9c7vF5
         lVTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VBLRQFUNwCVmQt/U0+pNRD1LgO2SoiS3uerHN4Jhq+k=;
        b=WOh+M2QfEuk3Di4X0YQrGbh/nKwKzPy8sS0P48CG73Z5Rvo4NuriyGGdYTo5VS1vsL
         DKq6pQlM59xxqui7J3PhtGdYaDVSksXhluaWIz9qDjsww6pW1dtfbH5Dmq+DrVmBQ3wK
         p7agrp/6TgCHU+41TkqeNFb3wuT+Eoua/tVdww32vdNPfw41YuuCgynDw9/ikV7R4ulU
         YZVpHsOCCkQlY2kPjkUoWhBGdji7d/ktHqyoBTF5WTSaXDpjr7gOEM/htDaeUHo3iWHT
         A13OP4aZV7jEMozGHN+fIP8ECU5vsz3KBR5uxcPnwrf2Xm9hVnnDUIeBvJIvjIrqFPuD
         mUCQ==
X-Gm-Message-State: APjAAAWt+XeSAsM3at6x7u2+VYIK77Djg1sBD9xSBZ59Z5eAPPzBliil
	xaRDJakZZlSKHT2x68DpsWE=
X-Google-Smtp-Source: APXvYqzXgXV0+9R3Hthqk3jEVobAvf5EFFA5vjQgMOG0TneweJjX4gl6QRYcLSiw85sblRdhD10oHA==
X-Received: by 2002:a05:6830:1db3:: with SMTP id z19mr6371375oti.292.1581445251372;
        Tue, 11 Feb 2020 10:20:51 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:7999:: with SMTP id h25ls3645885otm.2.gmail; Tue, 11 Feb
 2020 10:20:51 -0800 (PST)
X-Received: by 2002:a05:6830:231d:: with SMTP id u29mr6433925ote.185.1581445250945;
        Tue, 11 Feb 2020 10:20:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581445250; cv=none;
        d=google.com; s=arc-20160816;
        b=a3a9sAMpcqbmHfAEw8CPn3yVxhWBxYmesR3xQ7wnzFu8TXljwO4mnUf3XwNsq4oXwr
         ZoIFNrn92rltgluavhzkLQASHXATS0aQNoRySNfJwl4QX1QnwsrWLtXxDO+ID4K4y0h0
         yMw+4BUog75mEqLDhxZeUfYFqFj7b1t5wwYajREbKERRZyWc3elWHza8bSlIITYGxNTB
         +kbY758i3i/V3wUzFoUIF3psM+lVfW0fXYrddYXSHhEDQpE1t8xbGupFmAS8y9wp6e2V
         e0ef7PwHMhSxXxVCLB372L+vU6B6kao37o0AILfAl+Ayp+86aPm10KVadLrcnDir/tlm
         +7Kg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=4OgG0hetIsP1V38kbC307zOjczZWs0KOp5Ez5Rl0KME=;
        b=XY8exFkyGPxotQCxg65fRkWt1QXaPY9wcAW/1Aiy652Jo6wCgfh7AAEUJASXAD9e5C
         V0QdNwzgPJD8ivLM6kFquA2Y0Tmy1bTBLeuymzssuxz9REre5BAY2PA2onDJzuYQ52x5
         rKlJ0z3s3bpj85IEU/MJwWzmDgHL8DE4hAGHKr7yl+auUqNybyXL3fP7jD+PsJho10qy
         uAR++1zb3oNJPQ57bkB57otPnrCbwrfZUVsErFHsoNTEXWdS+d1E1IG1PqSvAuUTziRJ
         T5Jag4YYKoYbPqJNjihtgh2N/ZnAcUFz1eCXzY6Au6ee/CrYeda/DNtV5ZIEo3Iou4UP
         HrjA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=lDSRjevb;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id d16si248364oij.1.2020.02.11.10.20.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Feb 2020 10:20:50 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id s1so5869730pfh.10
        for <clang-built-linux@googlegroups.com>; Tue, 11 Feb 2020 10:20:50 -0800 (PST)
X-Received: by 2002:a62:1615:: with SMTP id 21mr4402234pfw.84.1581445249952;
 Tue, 11 Feb 2020 10:20:49 -0800 (PST)
MIME-Version: 1.0
References: <20200128021145.36774-1-palmerdabbelt@google.com> <20200128021145.36774-2-palmerdabbelt@google.com>
In-Reply-To: <20200128021145.36774-2-palmerdabbelt@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 11 Feb 2020 18:20:39 +0000
Message-ID: <CAKwvOdnPu8-0O5kLDY2t=wq1rqWNX7v0CSrRmomPYLA1=BX=GQ@mail.gmail.com>
Subject: Re: [PATCH 1/4] selftests/bpf: Elide a check for LLVM versions that
 can't compile it
To: Palmer Dabbelt <palmerdabbelt@google.com>
Cc: Bjorn Topel <bjorn.topel@gmail.com>, Daniel Borkmann <daniel@iogearbox.net>, 
	Alexei Starovoitov <ast@kernel.org>, zlim.lnx@gmail.com, 
	Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>, Yonghong Song <yhs@fb.com>, andriin@fb.com, 
	Shuah Khan <shuah@kernel.org>, Network Development <netdev@vger.kernel.org>, bpf@vger.kernel.org, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>, 
	"open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, kernel-team <kernel-team@android.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=lDSRjevb;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442
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

On Mon, Jan 27, 2020 at 6:14 PM 'Palmer Dabbelt' via Clang Built Linux
<clang-built-linux@googlegroups.com> wrote:
>
> The current stable LLVM BPF backend fails to compile the BPF selftests
> due to a compiler bug.  The bug has been fixed in trunk, but that fix
> hasn't landed in the binary packages I'm using yet (Fedora arm64).
> Without this workaround the tests don't compile for me.
>
> This patch triggers a preprocessor warning on LLVM versions that
> definitely have the bug.  The test may be conservative (ie, I'm not sure
> if 9.1 will have the fix), but it should at least make the current set
> of stable releases work together.

Do older versions of clang still work? Should there be a lower bounds?

>
> See https://reviews.llvm.org/D69438 for more information on the fix.  I
> obtained the workaround from
> https://lore.kernel.org/linux-kselftest/aed8eda7-df20-069b-ea14-f06628984566@gmail.com/T/
>
> Fixes: 20a9ad2e7136 ("selftests/bpf: add CO-RE relocs array tests")
> Signed-off-by: Palmer Dabbelt <palmerdabbelt@google.com>
> ---
>  .../testing/selftests/bpf/progs/test_core_reloc_arrays.c  | 8 ++++++++
>  1 file changed, 8 insertions(+)
>
> diff --git a/tools/testing/selftests/bpf/progs/test_core_reloc_arrays.c b/tools/testing/selftests/bpf/progs/test_core_reloc_arrays.c
> index bf67f0fdf743..c9a3e0585a84 100644
> --- a/tools/testing/selftests/bpf/progs/test_core_reloc_arrays.c
> +++ b/tools/testing/selftests/bpf/progs/test_core_reloc_arrays.c
> @@ -40,15 +40,23 @@ int test_core_arrays(void *ctx)
>         /* in->a[2] */
>         if (BPF_CORE_READ(&out->a2, &in->a[2]))
>                 return 1;
> +#if defined(__clang__) && (__clang_major__ < 10) && (__clang_minor__ < 1)
> +# warning "clang 9.0 SEGVs on multidimensional arrays, see https://reviews.llvm.org/D69438"
> +#else
>         /* in->b[1][2][3] */
>         if (BPF_CORE_READ(&out->b123, &in->b[1][2][3]))
>                 return 1;
> +#endif
>         /* in->c[1].c */
>         if (BPF_CORE_READ(&out->c1c, &in->c[1].c))
>                 return 1;
> +#if defined(__clang__) && (__clang_major__ < 10) && (__clang_minor__ < 1)
> +# warning "clang 9.0 SEGVs on multidimensional arrays, see https://reviews.llvm.org/D69438"
> +#else
>         /* in->d[0][0].d */
>         if (BPF_CORE_READ(&out->d00d, &in->d[0][0].d))
>                 return 1;
> +#endif
>
>         return 0;
>  }
> --
> 2.25.0.341.g760bfbb309-goog
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200128021145.36774-2-palmerdabbelt%40google.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnPu8-0O5kLDY2t%3Dwq1rqWNX7v0CSrRmomPYLA1%3DBX%3DGQ%40mail.gmail.com.
