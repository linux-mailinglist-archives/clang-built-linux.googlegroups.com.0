Return-Path: <clang-built-linux+bncBDYJPJO25UGBBIEVZDUQKGQE2BELI6Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x840.google.com (mail-qt1-x840.google.com [IPv6:2607:f8b0:4864:20::840])
	by mail.lfdr.de (Postfix) with ESMTPS id D7FAE6EA9C
	for <lists+clang-built-linux@lfdr.de>; Fri, 19 Jul 2019 20:23:29 +0200 (CEST)
Received: by mail-qt1-x840.google.com with SMTP id x7sf28440643qtp.15
        for <lists+clang-built-linux@lfdr.de>; Fri, 19 Jul 2019 11:23:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563560608; cv=pass;
        d=google.com; s=arc-20160816;
        b=vgJLKaUKWFKRb904FL1TFtbZB8tW3Lb0Oje0ELnViz24FQGl+Gr7cfyx+XzPgVHPV7
         1XrXtdUrS9YbWdt5BmT8E680wAvaOD/Idg3rSST5F4btEgjBP/I/GHwdOTWdThM2h+Gp
         852oxyTZ73mqjoH6cXrqg5kxFMZu0S8oVw/4bpjiFCld3RElNhturd24+N30c6xJ3zyJ
         +IHPYPrwhokv9KophSo5QBnYn+6otvyOPjkesxWr/XZCQu3HNyx/k/ii2JKQ7rM5ipDA
         7BM/GBIEHBfCFwhjZ9JdwwpBJhuBAj2D4QOKVxnJ8U2UVEVX6y+DxUJVhzkFLbuMEeAu
         bJmg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=g4QckcPNxxU/iK9MRgaVWlD4dGwJER8Abi0gW3qxp2I=;
        b=QNSe6k17FkDP7DtfC4lSvLHXGiWuN5uNPDg6HCdN/PWlBIQdLBsFrideQYFsADD3oc
         TG03em7DZo7PTdJkBe2r40T07CE4o0kSk2xC7BXcRuTVAX9gewRbe25Q7fhiKLlo/hdD
         OVX2583Wi5TmkdF5FbCyKvh2OKm8rCAtspAZVpZlfjtE3g4qTkUiptfhMv3ohiBw4qnJ
         UjDfTaSIaECAv20a8AO9wg2SCkPeRonASxsxaTkxykjlfISGjW8kg4rqZwD41XD/7kun
         bqsOOeh2A2yd+EHlbfXOGebPScjdB8U2WhWjYlwh9nPuXg449v7kHzwYZ4Hertgt89ML
         ZAsg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=gznuTwuf;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=g4QckcPNxxU/iK9MRgaVWlD4dGwJER8Abi0gW3qxp2I=;
        b=QwiW4FLXDfDKe35AdpZUPPi7FWGjZ4pide7BFDHKGVacq+SOiR0Zi4XLDurCTUeUpo
         Ud0oPOmF2T2Qdt6Op4lQJxgwXNUARhdSkMlj3z3COPqRuPbza6W5bgazAOj+PK2hyOid
         AIoZN8JaiEQiLwIRLfbZfUddANci9tz7uuKEYhyfiyTqbY25HMzYKsOfwS2iZiUe0NhP
         0Wnz2uyev3Awsa/PBkq5Y148z3KtjsFkwPUcueocIx50RYRu3psZ+TEx+8QbnCKW2wJC
         M4ft6j/+edE3EHBm5vnQU7IDZexeHL4NMn8ch8lfIlgmZaLD8V+TT/li8QYqwmRppiDI
         gK+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=g4QckcPNxxU/iK9MRgaVWlD4dGwJER8Abi0gW3qxp2I=;
        b=aMzEWEJE/6su3l9Sfj3zzFZzONO/NUOpv9QFTLLPsW9n5QCqqoSIQWzNht6KRYmBqR
         n9MQOPmYMprotrB+EglvLlitjmNKwXYMVcty0bnZRyaLoo3lzzDNHrhYYknXwHw67zzG
         9zSgkhOiTElkUwfCcDBFCiZ/XHPgM1BY9grRGRQTDeIjMEwDSXQX/VGCLu0IzSJENSLE
         1rGsSDe1z5u0atxBwD5luuB9odUbGxTwzVenqBXMV16aZrDngf4GBJ6ULh69q5wpXB45
         tY5gO+Dx4+TBd214+OCDFaOs3AYInb004Wf9hubPOsl2Z/v9QUUddDxQH0fROghGgJ7u
         ovXQ==
X-Gm-Message-State: APjAAAUILZ7prdER3uyMKzubYlaFvKyT1RdFmSxzOyzCnmaYvLWk/Rlg
	j04oWaSK9nmJSq1+KOwh51w=
X-Google-Smtp-Source: APXvYqyQhco2+vZq7ufZgdXERU0v56X+cAB9eOAauYOOkVm4kIi/Cji1DimFzAiEsNG41NWOrtTksQ==
X-Received: by 2002:ae9:f409:: with SMTP id y9mr16948332qkl.244.1563560608674;
        Fri, 19 Jul 2019 11:23:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:bc9:: with SMTP id p9ls8283610qti.6.gmail; Fri, 19 Jul
 2019 11:23:28 -0700 (PDT)
X-Received: by 2002:ac8:2c17:: with SMTP id d23mr37587006qta.385.1563560608435;
        Fri, 19 Jul 2019 11:23:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563560608; cv=none;
        d=google.com; s=arc-20160816;
        b=LiR1J3weLiXzdL8cKh64t/opxI7hq3D542YgunVqrnmkxK36bxaO0N7JPCSxZ1gUSl
         ZqVCEb0MLqF5nq08aUn4MiOX6DY78aQvfp2KWtH/qtVIOYBQGkJzykTM5k4kPaW/GqV+
         g8hFdOD48ae/QocxscQJt0wgu6xHcv9PlUXzm7j44oUiLWG7x1Juggpe0+4TemDtOl0P
         UNO+tuYYBd0flVLFg5FoncEdgGNKy34vsoy7FoxN/bEpqh8a16ouZkPJF7BQ9UME5jtu
         Ejf2YQiv+sSMjhAWwVNbnboQm189HEobKgf+58JBYUINrajCfR633l+i4pZpuNKwwesU
         g1Zg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=2YU8DTjyy8eQnNRmlMpHI4dE8EXYO0RN+2/iEJZ71QI=;
        b=X3QyqdentMk3akjSpkHCDYooa5cSqbYteG4/ghWfP1jzpiKF4jlECp+EN4LFQi2M/R
         2yvY+BPars1/2BRmxP3pTRxKLJmk3hnRpZhk1YFK3uBONG+brT611HdamJUw/9ZVT+RO
         JSNr66xoR4d0tcXqnTuNSjDcBR+/SfMIkpf1kVeUsiz2hSvvFGOKF5V8ZuJBsQNmDg02
         p1hf0FXQ4HiQFH+L+F3uKHgJjH6+mVmxUHFfOOCddZ4o5eGyn8r3HZQR1Sssf017icUl
         7eEHqFn/AZHZM0Kr/lLmJRFdo3wqbee5q7wxBH4rCUpXdXygiz8+7bG5wCyC5ZJHmmfz
         re0g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=gznuTwuf;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id g41si1523266qte.4.2019.07.19.11.23.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Fri, 19 Jul 2019 11:23:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id 4so9029209pld.10
        for <clang-built-linux@googlegroups.com>; Fri, 19 Jul 2019 11:23:28 -0700 (PDT)
X-Received: by 2002:a17:902:9f93:: with SMTP id g19mr57804425plq.223.1563560607118;
 Fri, 19 Jul 2019 11:23:27 -0700 (PDT)
MIME-Version: 1.0
References: <CAK8P3a12cVdrEXdgWkHGHP6O04mz5khaB7WgQ1nvOptaUTu_SA@mail.gmail.com>
In-Reply-To: <CAK8P3a12cVdrEXdgWkHGHP6O04mz5khaB7WgQ1nvOptaUTu_SA@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 19 Jul 2019 11:23:16 -0700
Message-ID: <CAKwvOdmoD1wVFLdWRXTA=c-p4oc6HDxsfhXq5wQpD-8oFUfNNQ@mail.gmail.com>
Subject: Re: warning: objtool: fn1 uses BP as a scratch register
To: Arnd Bergmann <arnd@arndb.de>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Josh Poimboeuf <jpoimboe@redhat.com>, 
	Peter Zijlstra <peterz@infradead.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=gznuTwuf;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641
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

On Fri, Jul 19, 2019 at 11:10 AM Arnd Bergmann <arnd@arndb.de> wrote:
>
> A lot of objtool fixes showed up in linux-next, so I looked at some
> remaining ones.
> This one comes a lot up in some configurations
>
> https://godbolt.org/z/ZZLVD-
>
> struct ov7670_win_size {
>   int width;
>   int height;
> };
> struct ov7670_devtype {
>   struct ov7670_win_size *win_sizes;
>   unsigned n_win_sizes;
> };
> struct ov7670_info {
>   int min_width;
>   int min_height;
>   struct ov7670_devtype devtype;
> } a;
> int b;
> int fn1() {
>   struct ov7670_info c = a;
>   int i = 0;
>   for (; i < c.devtype.n_win_sizes; i++) {
>     struct ov7670_win_size d = c.devtype.win_sizes[i];
>     if (c.min_width && d.width < d.height < c.min_height)
>       if (b)
>         return 0;
>   }
>   return 2;
> }
>
> $ clang-8 -O2 -fno-omit-frame-pointer -fno-strict-overflow -c ov7670.i
> $ objtool check  --no-unreachable --uaccess ov7670.o
> ov7670.o: warning: objtool: fn1 uses BP as a scratch register

Thanks for the report and reduced test case.  From the godbolt link, I
don't see %rbp, %ebp, %bp, or %bpl being referenced (other that %rbp
in the typical epilogue).  Am I missing something? Is objtool maybe
not reporting the precise function at fault?
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmoD1wVFLdWRXTA%3Dc-p4oc6HDxsfhXq5wQpD-8oFUfNNQ%40mail.gmail.com.
