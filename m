Return-Path: <clang-built-linux+bncBDYJPJO25UGBBNGCVHWAKGQE2U3IYVA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc40.google.com (mail-yw1-xc40.google.com [IPv6:2607:f8b0:4864:20::c40])
	by mail.lfdr.de (Postfix) with ESMTPS id 95A36BD1DD
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Sep 2019 20:32:21 +0200 (CEST)
Received: by mail-yw1-xc40.google.com with SMTP id p185sf2150311ywb.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Sep 2019 11:32:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569349940; cv=pass;
        d=google.com; s=arc-20160816;
        b=hJ6TUYpnb97Fcwnuq/VBPzVEyo4JThXcW8J8onheKgc+0MEFmL4UicCnbF7odpjpgv
         nkGPc1l2GwXdXbgKx5a59AzJFGuMt3nxXTvsbLvhB6YQi/cVwxsH3SQrAgPHxQWqABoC
         VszijmC1QSjcN8p169g02Mrvt1I9N1uWWeBp6zf6Pn1tqNM2HALnFQApbNAvymCjY9dq
         VycvSsn/W7zvnWXCccHglb7fCzml9/pjwUwgCPTgRhLoXsDeZNOgvES9eHc3jWG9CbPF
         l2pV/mQvTAKt0ndL687xs0Sta3CmLRqBdmzf0qbDtlbT/Vx/jBN/ndvvDYp+HGSpeljc
         SY3w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=TSdHUoZ4C2+uxhSa+awrIYgAMWeRo15qRH/iV1qqzuY=;
        b=wOPdpFVflnh0pgziGdhfvBIQ2UKHI1hEOc+/oEYLpJIEgwT1JOviXqR5lmi4DbDQ0c
         gYz27s/dc+BmWByO4muF4LAdR7t/Z6Gs5fzXimdaUWk95m5azZdVvZzkbBlZmr9Y61na
         Gve9oiOkLYVftu/DESJIv+WjfQ15RuAoZPirg3peQVBX5DyWUgFwggneFnw4gF9AWt9D
         MAa82pjqOB0xa9LGASVJTc/qRZSDK0Zs5dgOlERqMN6m/c/y3rFL58KBTTyUlp/DYth4
         UUvprcGf5lIhvBRIKCYmQ1m79rpS9HtavovrSfKiPtZy+MxOx24TP15bXI17/vaO51WS
         5DhA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=LLxllnZj;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TSdHUoZ4C2+uxhSa+awrIYgAMWeRo15qRH/iV1qqzuY=;
        b=LsXPwhuiLiWb7D+jGLLIv/5cbtxN1YFzPhqqnnyjQF8Nyg79to5QhPot51nTRUHEXF
         zh8Nf5+fMwmlwjXbVn2ObOK4Gl3XRhBT0kymJpVY+r5qKHk4I1p4r+6rZRBQRTwoK4sA
         q8WLadz4Gg7ZqNqJ8Ao6c/YDSFS3eJPHwP9/+hi6X20TqzceP+jshJ7ENrpiEtrrV8sD
         qyh/4AEKmHD6KQBZ/zq6NQ2N7MVmYz5xBkzBbgAnhBTc7VyOIoz4zV1Xv+SxsEqb4nDA
         ykoJyZERsYxpQSQt133jKp7A88TdgaypZhlSZuyWcjqaoAXkf6NkcoNiw8YUi1fCuDVW
         5JiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TSdHUoZ4C2+uxhSa+awrIYgAMWeRo15qRH/iV1qqzuY=;
        b=I4Lf+CHCGtPLKhMhMIHsyu22ah3sotqhXf/g/HeWm6bf9I43cTq/YYIZSxNwQ/sVbt
         mrcSb27jR4Hct2qbC057J4QFvRBjm3Rnq77zCN67FX4UwyGpP6QQlkEYmkIRQj5MA3hp
         SdwjjgRPYysNXcmfqgXubGtxlteqjsI3pcTMRgPVque/0cwH/qeSqiwg/Aiz7ZHMjKha
         jwf/tTrDJpEgliPTQuX9SYUTG9R9xKD2QnsAq3pQeHgFdzw/0fB1zchqN1eOMnw/wKeu
         1omPXuov0A54YyWAI2sNcJZJVAOBODJhTo7Fjh/M3VUp34lpIt3UMetgnfFtUOqFXdQ9
         /rSQ==
X-Gm-Message-State: APjAAAVd1StLFS3KG/TXlTYN2jYcxsxial4ZisWWYxcUSKuTWTh4ruOS
	pdxwKl/ocS3JtW+s1KFWv94=
X-Google-Smtp-Source: APXvYqweljo/06HbJmmnegnz4w5l+DiNIl7ckoB6t1bOabiMPoCzRgzyJPwrZLE/takW/wujvr69Sw==
X-Received: by 2002:a25:7088:: with SMTP id l130mr159718ybc.66.1569349940623;
        Tue, 24 Sep 2019 11:32:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:1ed6:: with SMTP id e205ls28092ybe.14.gmail; Tue, 24 Sep
 2019 11:32:19 -0700 (PDT)
X-Received: by 2002:a25:5b41:: with SMTP id p62mr139901ybb.266.1569349939397;
        Tue, 24 Sep 2019 11:32:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569349939; cv=none;
        d=google.com; s=arc-20160816;
        b=goSUMvQ5pQZKSyICs4pGXNV4XsXb7tavy/TQzhImY8RmggCsm2NLLSS6p7JZDVePXp
         2moOzDmDql2Dh11cMiLTZuVQSn38NPfs3jAchyLgoCNAiHXCEzTxgk1uQLbybfqJErwc
         txxVdbgvisHD9nrRwFnpXz4YqQygzCVhq/7SXfGVfw3jyPPGJrLqV64RGnIVkEGKVXGT
         cR11KAjm5dIVAd/cQHcEYBS1yYL9Stovbz7QOR5MI4kYZT/uco/xdfPz2bKGFdVZHtD+
         FcJghGnYHXQcwsqLO2UXTFXFlEqa/X9m0I2Qr3v2xPJkujIlPh/ihYLR2JR3HLa/pDbS
         BCkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=MFxAZD1w5UhTlzLtE5TmBr2XeUa2P0bLYhndFfGu00E=;
        b=ue6SgTZzcReIeozhAbJIA6gcSVbcGU98EJiKm661uCE7allwQVwZ93faXhhtPAcGQo
         1aCvx7jfKXnrxZpvzvyeuVBMaZMLJ4gxWsudBftAS0TGLOpEOhaq8DJ2ikZB/ODieP1g
         N+wNwdWkwkYvwCYsEcO0td7BK6M8aMssBk7rDcc1LFtp5X8u3LGZbtKrnfVl3WqZdNxc
         KScg8eyI7ixFPnB6NH9AU/nq5gV7gcWeK88i5/vhVSmorjZm1R8iSMkOC/YVmSc978fy
         AdSaCKKUTwh66+v2VLJvyrvF5aZXO/KyoRohQTXfyQF1oUyrDbDze4qe24+WrlSQVQ8m
         0RTA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=LLxllnZj;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id p140si97583ywg.4.2019.09.24.11.32.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Sep 2019 11:32:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id q10so1881068pfl.0
        for <clang-built-linux@googlegroups.com>; Tue, 24 Sep 2019 11:32:19 -0700 (PDT)
X-Received: by 2002:a63:d908:: with SMTP id r8mr4509167pgg.263.1569349937836;
 Tue, 24 Sep 2019 11:32:17 -0700 (PDT)
MIME-Version: 1.0
References: <20190923222403.22956-1-ndesaulniers@google.com> <20190924182417.GA2714282@archlinux-threadripper>
In-Reply-To: <20190924182417.GA2714282@archlinux-threadripper>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 24 Sep 2019 11:32:06 -0700
Message-ID: <CAKwvOdmFqPSyeKn-0th_ca9B3QU63G__kEJ=X0tfjhE+1_p=FQ@mail.gmail.com>
Subject: Re: [PATCH] x86, realmode: explicitly set ENTRY in linker script
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, "H. Peter Anvin" <hpa@zytor.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=LLxllnZj;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444
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

On Tue, Sep 24, 2019 at 11:24 AM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> On Mon, Sep 23, 2019 at 03:24:02PM -0700, 'Nick Desaulniers' via Clang Built Linux wrote:
> > Linking with ld.lld via $ make LD=ld.lld produces the warning:
> > ld.lld: warning: cannot find entry symbol _start; defaulting to 0x1000
> >
> > Linking with ld.bfd shows the default entry is 0x1000:
> > $ readelf -h arch/x86/realmode/rm/realmode.elf | grep Entry
> >   Entry point address:               0x1000
> >
> > While ld.lld is being pedantic, just set the entry point explicitly,
> > instead of depending on the implicit default.
> >
> > Link: https://github.com/ClangBuiltLinux/linux/issues/216
> > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> > ---
> >  arch/x86/realmode/rm/realmode.lds.S | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/arch/x86/realmode/rm/realmode.lds.S b/arch/x86/realmode/rm/realmode.lds.S
> > index 3bb980800c58..2034f5f79bff 100644
> > --- a/arch/x86/realmode/rm/realmode.lds.S
> > +++ b/arch/x86/realmode/rm/realmode.lds.S
> > @@ -11,6 +11,7 @@
> >
> >  OUTPUT_FORMAT("elf32-i386")
> >  OUTPUT_ARCH(i386)
> > +ENTRY(0x1000)
> >
> >  SECTIONS
> >  {
> > --
> > 2.23.0.351.gc4317032e6-goog
> >
>
> This appears to break ld.bfd?
>
> ld:arch/x86/realmode/rm/realmode.lds:131: syntax error
> make[5]: *** [../arch/x86/realmode/rm/Makefile:54: arch/x86/realmode/rm/realmode.elf] Error 1
> make[4]: *** [../arch/x86/realmode/Makefile:20: arch/x86/realmode/rm/realmode.bin] Error 2
> make[3]: *** [../scripts/Makefile.build:509: arch/x86/realmode] Error 2

Thanks for testing.  Strange, it seems that ld.bfd doesn't like it as
an ENTRY in the linker script, but will accept `-e <addr>`.  Not sure
if that's a bug in ld.bfd, or if ld.lld should error as well?
https://access.redhat.com/documentation/en-US/Red_Hat_Enterprise_Linux/4/html/Using_ld_the_GNU_Linker/simple-commands.html
v2 inbound.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmFqPSyeKn-0th_ca9B3QU63G__kEJ%3DX0tfjhE%2B1_p%3DFQ%40mail.gmail.com.
