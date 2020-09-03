Return-Path: <clang-built-linux+bncBDRZHGH43YJRBC4BYL5AKGQECDDYA4Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x238.google.com (mail-lj1-x238.google.com [IPv6:2a00:1450:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A34A25BA1F
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Sep 2020 07:35:08 +0200 (CEST)
Received: by mail-lj1-x238.google.com with SMTP id t12sf696823ljh.19
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Sep 2020 22:35:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599111307; cv=pass;
        d=google.com; s=arc-20160816;
        b=PhXD+4Jfx2Gs9H+f+tYG/HeaGQDYr4ey8m8K96nFQE7yposOMNoaqVGdAZ8bzlxkk9
         x2v2jGmmeZFdAwOx7cLgGwMKJZVZNxc8u7zkZ1sFkVnC58a9vv1q53qxz29+aggAu/9y
         mPKin6rE/AJ/cnVbuNxkK4FLw1M4Lbaps/fn7R8OOi72HlufFwMVEy+CSYSumQsyHTH0
         9XH1gN0T/d5aXiL+2MSUd7MxjELlQiAdYuh1tRPie8PV86KhIu7CRE5QMtD38H5Jg/UZ
         Vsse5Ja2V2FKmeE4nsaVsJFwV3EzfnTJ0Ei8JR7f5vEPlTAliqt1SO2iDTuQ0oxnRAzN
         hiCg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=dP78pU8s/A7OVFI0Sf5HW30+Zdmerbb+pCJrbL5v0N8=;
        b=Oy+j0Fu3foIQzosm30XYPQOu/qogfjVWxN9a3qj/DX19DIhTObVaWgqTKT69uXjOeP
         ET45a3kxdlI438a6Hl4IzSzJ9kBzGGrOcPYqWaI5WCMjRUfeNDcT1Zy5mfnEi67W0a4Z
         HIM3w+eahNgpirZk5Ruw2eT94hd44uG0SdooJgHPSiIe6uv5+bqoCpEo9VRt5cLFPXt7
         5d62dj6MksnNWvTkpI8suU8/xpuEXc5HpM8I3JOoZx5dpd68dpq+nLSLMWbk5RCPaLL/
         flF6bGjnpyNGwwKyoM3sIpSBqNES4nbPqd5Y9kvMbjSD5nHnVK2dtaM8Cxq2nTTcJy61
         Tk8Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nVRTaNTr;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::243 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dP78pU8s/A7OVFI0Sf5HW30+Zdmerbb+pCJrbL5v0N8=;
        b=Kmq59uhTnZlXBOoO6ty4QR70vUcfsmxPvaaK6IVtawkv1MF8MWYoS2EJEhhIjpo+xX
         tlJ3W4xRD8JNxLOFffHfLfh8CkcLX3WxjoY+E4qE79ttmSuvRfvn8/7EMnaTKcDgeAif
         4RTzTQ9esmCtLZ/ThtFb4v2hwfcRLSGlPoxcGkHygy9MF+QaAiXoEIzpIJU16SV0t+GC
         bOSWACLHmgEpcds0NrGT7ct28ftoUBMSAhJAjUNVE8VpekrInCsH+KEt1UshbxPUO537
         D9ePYLxUwATMAZT3F2QUm6345awHbiSFcIuV9WjywGkYSDmBJjfj6BVPH0dCBCd0kXZM
         ndjg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dP78pU8s/A7OVFI0Sf5HW30+Zdmerbb+pCJrbL5v0N8=;
        b=hBwRgSoHooEFhSp3NsM5o0yFJO+GqqW3OWHQE1rxFVca7ImGPe61KjIpAfnjUX6Lho
         RSsgA9Rd83afVLLb0YzVlDlxRq1DIalL413iT5xICXtPSlby62BkMireqZ4SSPue6KUp
         cmip/TsCzZR1gZBCfSIiLx2x46g2WIJiEZzPlurzT6uSIJ9H+is6HGDZJH9dowo+fo+k
         1Wi0+YvMe3d3uhE7cnRM4ncKQ62h8c5x2fI9ksC4cbrfzp1NW2VzbKMhwpPDk54PdQwA
         IrukMlk+MmqwEWP+MIi8iEA56ydszxFJH9FogVoTmqlujjKNY3aGdOhk+H1AWYmUUoaP
         zzrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dP78pU8s/A7OVFI0Sf5HW30+Zdmerbb+pCJrbL5v0N8=;
        b=gKs+ylhvXRBp5pmO+Zzyh3vfjor2NmldMZhoXSsrGcvDfZoHmhuQX6Q/EKj+d8aYOd
         S3zN8fYEH6W1zf7vCSTg+kS8S4wX8rIbvJkezXBj1hyqfSrPBBQWg+ocPakz6mRMoNNU
         HSw7isablVs9LQXk5q0H9Mz1qpVbN6x6nKkY9xT4Dc4H/tOvAqLPSZb7y77cFWKV9JvA
         IEiKet9QOfXpgfRF6lXQUwEeO6PaghakKLW+VsRaEeeEG4yLC0X6oXV7Ej73mPvT5kpB
         /mrOjd41sGA3f87B083uA0+NIveTiYQP6TUZjV6dqARXvoIsQ+Lk4oxhIpxVToXx1v1b
         W85Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533mCDstzs/GdEi5LSrYIW3M393sDkLzX+mcLKnR0rg8twcmR9vx
	tBEUItZqys3ueAa2z2G5cG8=
X-Google-Smtp-Source: ABdhPJwysxzLGpplTQUqpk5ZvF7QYHmilF7h3513UHrB7yYdFtqK6TzvgCWug9zEaHUuG5gpK7SJBw==
X-Received: by 2002:a2e:808f:: with SMTP id i15mr276082ljg.151.1599111307365;
        Wed, 02 Sep 2020 22:35:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9a58:: with SMTP id k24ls905960ljj.4.gmail; Wed, 02 Sep
 2020 22:35:06 -0700 (PDT)
X-Received: by 2002:a2e:854b:: with SMTP id u11mr254175ljj.55.1599111306487;
        Wed, 02 Sep 2020 22:35:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599111306; cv=none;
        d=google.com; s=arc-20160816;
        b=PdrQc7MMVM4U18FaYHT9O2A0r2Ty4bniph+Qnsn8C5qFivQUPARMpdQM5awd8vCdvi
         6MbHgsYk/yE0X8Tt1RPEd4e3iyc4m5Mb+/P85B0N0A4Wo4S+H0D3gfXUBHhCA2eX2NCu
         x5/WfbWXZsNbkx5YgnDGWAfdX+p4OIyfSeFVyS115i0I4AB4XvY1yKh7ZLQ8gIsNKDeG
         lHnut8VVYJs48GIO2mro8uGkyWXrDbyqyRddrYsxV9IS5eKkU98vFvIofipleTw4tJ+J
         J9VXjtnNjCNKMIZtE9mIUkFlBgBD0slO8bfLnM1o6GimGq0dWNbRuT7qm7udn5SgBoIg
         Xjaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=KvfRDr9m7GFxF53fVORc45Jz6EFpqNAlUtbFuBE05q0=;
        b=IoDm2AAvh/2DgocAEGUtKEoElcPPUA8HaPEErO3IZ4KUuDmDdxNRClAgkoKPe0bAVh
         vcZSCIAAdUrCbqRNvMzDgzxacviK6DNJRSCkPoYOhyl5FdqtT1tco/d4MCUSiP1w7svP
         OpoEztmcyCDosLYn5g8GHvAIc0iJFucuokZT/zMVupXfaPRx0VPHgLha2BRvCSKyEGrN
         Cw/pifCSclC4k78xA1uOFu0W1Gf04BEdX1MZy5kAoEf6f+4ODKp7gZrKG8ikRPD3OB92
         sbVNH5lDWseH/HH80PPfaXqTQI7pcOTzeJqS/jdPjZbzj/TTBk1K9m8Yq+JparkRn2uA
         HdJA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nVRTaNTr;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::243 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lj1-x243.google.com (mail-lj1-x243.google.com. [2a00:1450:4864:20::243])
        by gmr-mx.google.com with ESMTPS id z6si59222ljz.8.2020.09.02.22.35.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Sep 2020 22:35:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::243 as permitted sender) client-ip=2a00:1450:4864:20::243;
Received: by mail-lj1-x243.google.com with SMTP id t7so1344293ljo.13
        for <clang-built-linux@googlegroups.com>; Wed, 02 Sep 2020 22:35:06 -0700 (PDT)
X-Received: by 2002:a2e:9b59:: with SMTP id o25mr299127ljj.264.1599111306283;
 Wed, 02 Sep 2020 22:35:06 -0700 (PDT)
MIME-Version: 1.0
References: <20200823212550.3377591-1-nivedita@alum.mit.edu> <20200902232152.3709896-1-nivedita@alum.mit.edu>
In-Reply-To: <20200902232152.3709896-1-nivedita@alum.mit.edu>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Thu, 3 Sep 2020 07:34:55 +0200
Message-ID: <CANiq72=u33tiyp38WnxyyKOy4b5XSsw3JY6-ECWZvduHb4zqdQ@mail.gmail.com>
Subject: Re: [PATCH v3] x86/asm: Replace __force_order with memory clobber
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Linus Torvalds <torvalds@linux-foundation.org>, Sedat Dilek <sedat.dilek@gmail.com>, 
	Segher Boessenkool <segher@kernel.crashing.org>, Thomas Gleixner <tglx@linutronix.de>, 
	Nick Desaulniers <ndesaulniers@google.com>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Ingo Molnar <mingo@redhat.com>, Arnd Bergmann <arnd@arndb.de>, Borislav Petkov <bp@alien8.de>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>, 
	"Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>, Kees Cook <keescook@chromium.org>, 
	Peter Zijlstra <peterz@infradead.org>, Juergen Gross <jgross@suse.com>, 
	Andy Lutomirski <luto@kernel.org>, Andrew Cooper <andrew.cooper3@citrix.com>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Will Deacon <will@kernel.org>, 
	nadav.amit@gmail.com, Nathan Chancellor <natechancellor@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=nVRTaNTr;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2a00:1450:4864:20::243 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
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

On Thu, Sep 3, 2020 at 1:21 AM Arvind Sankar <nivedita@alum.mit.edu> wrote:
>
> Changes from v2:
> - Clarify commit log and source comment some more

Much better now, thanks!

Reviewed-by: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72%3Du33tiyp38WnxyyKOy4b5XSsw3JY6-ECWZvduHb4zqdQ%40mail.gmail.com.
