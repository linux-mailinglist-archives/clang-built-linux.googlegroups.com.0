Return-Path: <clang-built-linux+bncBDYJPJO25UGBBB7FXDUQKGQEV5IHMIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x339.google.com (mail-ot1-x339.google.com [IPv6:2607:f8b0:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id C8A516B062
	for <lists+clang-built-linux@lfdr.de>; Tue, 16 Jul 2019 22:24:40 +0200 (CEST)
Received: by mail-ot1-x339.google.com with SMTP id h12sf12301809otn.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 16 Jul 2019 13:24:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563308679; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZiNudRSuF87pFFAPqDOU0fkvEvCEOzWncDHloiVSA37udRqCY2xmpoAsrBEehAkAin
         8XEBIpi8bsXVEiG1SMyEofk29IEQfeeMcIakRc6f+C+h8UCMo05cpOxn+FdgoMiIdDSi
         NG4Py7AbbjUDYxGhMb5MAmsd6iEg46QHzwQ1/cpo4qjnQr4pO2toP6+tY6OYT9f+D9/g
         qqJWoSrYOalRqQDnorgGm4AZZFRS4WA0OYMz8Wv8kO1w3Fea/fDguRNMYCzdlWYCPnpi
         NAevX0cglUUPrK6yI6NyXF7oqFtbcGRpQtpOSWmXHopTbtFnX+6ivD0AUVBr5TGl+hF6
         p/vg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=nyCVT6g6oiz/42r7FP3IrU8TiEsKQ8hgR5d/5AHE/Xc=;
        b=J10NLmJzxigIN90Fos/R775BNb6pKghAT/vL4ne3sq+n/+YNQeJXVESg45mtb3vUFq
         tziE6CNqTEGHPQJBLD/jBTkDY/UCFsSBn1TJ1yKxtW/KdUW2FYbHhBx4my/0p40wxEIE
         P/AWVFUabVJwu1QYyQ4bVqPgbjs3n+dfYOshc1fWD/q/P6TaGamCP5u4Ul0EcjX533Ph
         QwjpEGL92HvK+JzPIjJPP4kUAYurDCrK5pO0mTOyWjEsxMwqjJi82gejJpjJ4ZoW1Vfa
         dK141IVH6bWQE7r/rcIykpysl8j4gpYesjKuVlQ6UPXGb2eV16f7Xw3QPjaZ27CsQmgi
         NrTQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=AwPuELhu;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nyCVT6g6oiz/42r7FP3IrU8TiEsKQ8hgR5d/5AHE/Xc=;
        b=raujfOqslMzRTFEyuomAjYLgbylTb6UpFI0usahRcSKFUm4bk84VcXsx34uknjyS6x
         bd5Os63TBPGb3/ODH7ajW3opTN6uEGuCDYYQRngQQuMrzQpmsi0MmSWDnHkCSKuSUkYE
         kQykJYVewCZRGfm58c2TWyiiiCHcRIS1p+FdL8kEiaI/sZcKP6siBC+kejhCs1Hl//8K
         7TwQwx2zWcZHBaCgc91UR+feYkYfPnyek5Zt03kyjJpt9Vy4OKFdBxTURNLkwG9rI4X4
         J8WS3NevRvYoGRi3lZwoZ9ZDtOyzk8PTsYpxDQe9BmheyS/CdCyJM9B1LIq8zXxxPmwa
         iMEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nyCVT6g6oiz/42r7FP3IrU8TiEsKQ8hgR5d/5AHE/Xc=;
        b=ZLcHM1BDPv3+dz2kEln9itP5VxgxDLCKOX4f1o2DVoOn5FdduMSZVxrov6TkapBE76
         8I546bTTRsLOPyIpCzPPUVdHUy4W7f/CPyHIRafav/eizl5jJZJpD7/JFWg/fdvg1MlW
         Qb30q65ISoR4+ZXCy08k5QX76f9LJnh9XL/P7dueByEj9nVSu8hHvK/bWjUD/aTeOjAy
         eGQVrVi6g+AOV0kMU6CwK4Uza+89d7dkeDXyrKz4Mab7QVg9bgAqsZWAm9FFB2xPHhBk
         D8GAvcxBo17SQFDQGdJ4hylOjVNNh9pailD+5tBx9UuxJUEDFgK/lQEj8AtPraJe9F8Z
         Rq+w==
X-Gm-Message-State: APjAAAUfX4J3jbSs+18+fVngGgENUheIDoVCVPyPo2Mzxd3cMLJ3ppMO
	8oIPx/jXnk/sB735hIfvEqI=
X-Google-Smtp-Source: APXvYqwOEnxoyytn1jwvbsDAduVAX5RBSVWm9GwR3l4DuG4Ew1GrBorf4g/wYp62Mus0Ftzp1D2z6w==
X-Received: by 2002:a9d:6f9a:: with SMTP id h26mr6747778otq.211.1563308679473;
        Tue, 16 Jul 2019 13:24:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:4804:: with SMTP id c4ls4115246otf.10.gmail; Tue, 16 Jul
 2019 13:24:39 -0700 (PDT)
X-Received: by 2002:a9d:6d06:: with SMTP id o6mr19298299otp.225.1563308679203;
        Tue, 16 Jul 2019 13:24:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563308679; cv=none;
        d=google.com; s=arc-20160816;
        b=qxlegZXbIafFZiBB4N13VBIVK3ba1YNReGiPqNZ+yj1ioTsO9LEH1uSU+LgXFl+rSt
         hmBtbdvGFqWl40y6gBY6vL1qZqhRrmKRB+epPX4+VpIVTbc7q7dKa8jFXIBnhAsCkkpL
         +XwkiapEYjChvbM9zeVmhOgk2ovs6kocARP6gxFLw4zaHFXnD4FTPkNxNu6mhomUbcqV
         5IQ/powEq9YIoCu/J1kl2V8dY8b3eya+0TRqAZuyAWnMPnWHBtKKunVqUq5fYqWt7VZ1
         uiWX8TkHcH68YDZWKN/mkKw2J32CRSGa1WZufVVS362DgH7XV1xCzYGwjxhb9ymjw0E/
         7a+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=tlgW7N5665To10UWUQBwQlj7I4LdVat1k1AQkv0K9Pc=;
        b=IMTkLiJRVtvrijWY/qkvvoMpx+6fZb/BoRCT7YOIFX608ZLVqi62qyHFHCclK+ExvE
         I6e4pXSe7eCCuUaKlSM8Bq+uzFnaKvVAr8JOv8i84bQcB6hO6r/7z28nvRuS9nS2mG16
         OTp21OBPdUeaJgkJO1M+VcvEJnlLAqi4yntgHFeH4HNWtlbPPQSd1oaIln5h0FRStLw6
         Zdllf+UiOtpodfGfohRLoC3jfOVgDvJqfFovrbETz/nsPzJWbPF6euj3qExjulC5g3wn
         HfOg21ACmfi//f7DGKjLNs17bbxBuPoBEogfuV13KxC19j8Y7M//nEUn3Ngv91UvOI6L
         AXCw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=AwPuELhu;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id b17si1180994oie.4.2019.07.16.13.24.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Jul 2019 13:24:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Received: by mail-pl1-x643.google.com with SMTP id c14so10668800plo.0
        for <clang-built-linux@googlegroups.com>; Tue, 16 Jul 2019 13:24:39 -0700 (PDT)
X-Received: by 2002:a17:902:4aa3:: with SMTP id x32mr36572379pld.119.1563308678079;
 Tue, 16 Jul 2019 13:24:38 -0700 (PDT)
MIME-Version: 1.0
References: <CAK8P3a2beBPP+KX4zTfSfFPwo+7ksWZLqZzpP9BJ80iPecg3zA@mail.gmail.com>
 <20190711172621.a7ab7jorolicid3z@treble> <CAK8P3a0iOMpMW-dXUY6g75HGC4mUe3P3=gv447WZOW8jmw2Vgg@mail.gmail.com>
 <CAG48ez3ipuPHLxbqqc50=Kn4QuoNczkd7VqEoLPVd3WWLk2s+Q@mail.gmail.com>
 <CAK8P3a2=SJQp7Jvyf+BX-7XsUr8bh6eBMo6ue2m8FW4aYf=PPw@mail.gmail.com>
 <CAK8P3a1_8kjzamn6_joBbZTO8NeGn0E3O+MZ+bcOQ0HkkRHXRQ@mail.gmail.com>
 <20190712135755.7qa4wxw3bfmwn5rp@treble> <CAK8P3a13QFN59o9xOMce6K64jGnz+Cf=o3R_ORMo7j-65F5i8A@mail.gmail.com>
 <20190712142928.gmt6gibikdjmkppm@treble> <CAKwvOdnOpgo9rEctZZR9Y9rEc60FCthbPtp62UsdMtkGDF5nUg@mail.gmail.com>
 <CAK8P3a0AGpvAOzSfER7iiaz=aLVMbxiVorTsh__yT4xxBOHSyw@mail.gmail.com>
In-Reply-To: <CAK8P3a0AGpvAOzSfER7iiaz=aLVMbxiVorTsh__yT4xxBOHSyw@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 16 Jul 2019 13:24:26 -0700
Message-ID: <CAKwvOd=o16rtGOVm9DWhhqxed0OEW5NKt4Vt3y_6KCcbdU-dhQ@mail.gmail.com>
Subject: Re: objtool crashes on clang output (drivers/hwmon/pmbus/adm1275.o)
To: Josh Poimboeuf <jpoimboe@redhat.com>
Cc: Jann Horn <jannh@google.com>, Peter Zijlstra <peterz@infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=AwPuELhu;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643
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

On Fri, Jul 12, 2019 at 1:41 PM Arnd Bergmann <arnd@arndb.de> wrote:
>
> On Fri, Jul 12, 2019 at 6:59 PM 'Nick Desaulniers' via Clang Built
> Linux <clang-built-linux@googlegroups.com> wrote:
> > > The issue still needs to get fixed in clang regardless.  There are other
> > > noreturn functions in the kernel and this problem could easily pop back
> > > up.
> >
> > Sure, thanks for the report.  Arnd, can you help us get a more minimal
> > test case to understand the issue better?
>
> I reduced it to this testcase:
>
> int a, b;
> void __reiserfs_panic(int, ...) __attribute__((noreturn));
> void balance_internal() {
>   if (a)
>     __reiserfs_panic(0, "", __func__, "", 2, __func__, a);
>   if (b)
>     __reiserfs_panic(0, "", __func__, "", 5, __func__, a, 0);
> }
>
> https://godbolt.org/z/Byfvmx

Is this the same issue as Josh pointed out?  IIUC, Josh pointed to a
jump destination that was past a `push %rbp`, and I don't see it in
your link.  (Or, did I miss it?)
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3Do16rtGOVm9DWhhqxed0OEW5NKt4Vt3y_6KCcbdU-dhQ%40mail.gmail.com.
