Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBXODW33AKGQEUKMIDVY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x437.google.com (mail-wr1-x437.google.com [IPv6:2a00:1450:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F0561E337E
	for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 01:10:22 +0200 (CEST)
Received: by mail-wr1-x437.google.com with SMTP id n6sf2652832wrv.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 26 May 2020 16:10:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590534622; cv=pass;
        d=google.com; s=arc-20160816;
        b=fQKaQieC6cjwt235BaxNVKQjT8oQxS50TWm1+5zBVDgrF6/0YL5fq/Ra5NzPCvwKMa
         196lc+l4MIEyh7LSwG5xY+vsyu6jym2sG1VI77G0iEIaVr7SPdmmYRWgCRWH3/ASELr7
         nxtE4fF1z3+x40ccFdGL993fH70G44WFAVoro/sArV5LazP0KbG6ehvSD+shI3Q1TKDw
         crIawYng/HKXmLKUFqko7kmjPNluf/9PRxJyWR7QrwgQ8wleq+3/dTp5Wi4O19HYwlmz
         ADSLnf4s437F/D6kk91iAuUpTt9++deKeQwAK+fGi6ihRt7V+UG0V1ctqKw72r6hpZmx
         AJEA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=rIYWq90S5f2kKdbgp99pI3+RNX+NquqUO0NLUY1v9gY=;
        b=Z72JRbkf2A5gnO+qoeAEnxD/as3aGbJzH8+FEJTCDU7NK0LyATtemGd+MMtA/AohzR
         I/boc+ZOfEHITbTaXmrIa2UptStn/kTqiVHhao64GNCXw5xIp86qjRBVhadN/A5bQ0iX
         eKfv9rugwyosmWyfbGG1IKVnEdkLzXbVMrNv7o+96H+l3IWP7+FWvjbLMAyZcgiFdlRv
         qrSZZ/3Jy/gTgC78zfux4LZRLWnejt8yeVIlTLwgCsh2+ePuth68I8qWbKS/FuH4HmT4
         bI1+8wXl+1WBNbbgTIQLj0Rlrx1nQLc5sf1S11s1cQe4klkremqNgQWEzrdILj6FjCLy
         +C8w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 217.72.192.74 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rIYWq90S5f2kKdbgp99pI3+RNX+NquqUO0NLUY1v9gY=;
        b=GAuX/ishLNaIiG9p5x1RjhwPCFHJukRm5dksFYC9pwXQkLLdph6Uqq22vus1hAez8T
         NXQuYP7aj3BTecfn9NmDCShT08g6EoH1ZhuePNThAujZS1iz7+GeVIQWh8Myge2vmWwv
         19qEj2OoboJ4SDrmYVqLyO3nBd28c6lS8btkdotfSQ4Gynu/q6m46ygm+pK9VXfXfu6z
         myyen3lsQksc2FGqaIMSFKbblds2G/LSkz/11DZIesFMA1OV2Rf94t3GkICFN16cawf6
         PqYZIrKVON0Eqm+8jx4/GtAWvap5WQfPIIez/wh71B+vK7t3Iu8wuriDYfUvsSKscoJb
         FQjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rIYWq90S5f2kKdbgp99pI3+RNX+NquqUO0NLUY1v9gY=;
        b=ROQE8/SZ4ztcUXar/8bLRtDLh2JRatskWBJjzZU/XrSzE8M1kdC4MnUF3Meo0ZIOGw
         ZDIraEgLpX3dnLn09HaYyknXM8clOrl0AAfejJHVv6vUvQh6MuRRz5fWP7GE8MeRdjH9
         P19Eyjs9NHsHMxdx1d6+MGPMOOR++fU5NRBzRS7xrtbK1clXKyO9KOkPPZ/w3xRFDn5t
         NQlc3kDnVyoGAtJIs90lw594f95a7wftOV3gbWOyQiWUnyNiaKhNIdcjHVxgHIwZi915
         Dff5Wmur0S6k1O6nbOFpucIVsQeblhlxJFvo5nButvMGyqdYc93ZfR64s4hxFhC0zoiI
         1IuA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530a1CRzMMCiuIn6qyl1yDJ423yblA3XhiEyGI1CnYbrCoJQgvke
	/267yxH/RZTN3VwlsRpEn98=
X-Google-Smtp-Source: ABdhPJxB9Ph+cZjYi2PAMfqeR4Qiem5geIp6MXyftLWKHAw9ZcHnF0eeUXLBkp9WwiwjAUN4csTz+A==
X-Received: by 2002:a1c:9c85:: with SMTP id f127mr1377083wme.79.1590534622011;
        Tue, 26 May 2020 16:10:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:9a89:: with SMTP id c131ls452473wme.2.canary-gmail; Tue,
 26 May 2020 16:10:21 -0700 (PDT)
X-Received: by 2002:a7b:cd04:: with SMTP id f4mr1416520wmj.118.1590534621497;
        Tue, 26 May 2020 16:10:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590534621; cv=none;
        d=google.com; s=arc-20160816;
        b=B9BDzrislQsrNID0ihIJgMYa7uNlPFVwAVvFBKwkUGibFstbU8PpWIqZc0KQMf8LLC
         y1UrEM73pC0RC+4113Pt94r99SPhBdA3RJLzSF/B2CcmXAUXQd6fFGUcz66ufZ1etyta
         9/541MLTk77Dz5HIZsxdXLmopbyMY6DCztePpZhjRXXNbLFtbWq5JZ83QIthBs5aNwa3
         W3nbIbH/NIC8D/NmJ0qEwk5JC5nKLpT+BQsxEzR34r/0hiUTfF0hRh0FbbpECRf9Q0YO
         4wUQpTycqcNSrBL5SlXktz//GaCPocMay8WXzSl7G8Vt24DJuUW5T0ks6/sR2wQfGpGg
         H6+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=lo/16QOhYIk0UVjnVHdLz5jeyxU9TwfpvPjbg4xv5YY=;
        b=u0didNElYow994vmirUCg4D3wHs3S3iNThqhF08colccjkEF/z6ykoXYg+GEIrCbKe
         jyVVpRumUEPBnYyBzG9Njpw/EeFAD+ZfR6xTy+rX0m7tZSAf+EoiqHz9iVzYZH2U0AFX
         kYPbqedxdxBWmfrqWWOSrmzOsY8p4azULiIsun4Tv0IDWSmAzVLcMVvT0jidsAGO0zmi
         lKCqznO6/P4eSngBC5IXXdd4C8fhsnzAyLD17OE1ZjaKv9Wy0vQ+Fy1AiOst3orEkpa0
         btJtejIsC7ICJetmL/dfEl9lHGkqVeqn0ZcoseRJkGJfCMz+WecrmxT43aDEtEP4MPBm
         fWkg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 217.72.192.74 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [217.72.192.74])
        by gmr-mx.google.com with ESMTPS id j15si58128wrs.1.2020.05.26.16.10.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 May 2020 16:10:21 -0700 (PDT)
Received-SPF: neutral (google.com: 217.72.192.74 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=217.72.192.74;
Received: from mail-qk1-f175.google.com ([209.85.222.175]) by
 mrelayeu.kundenserver.de (mreue107 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1Mqal4-1jHZBE3e0e-00mahe; Wed, 27 May 2020 01:10:21 +0200
Received: by mail-qk1-f175.google.com with SMTP id q8so6126118qkm.12;
        Tue, 26 May 2020 16:10:20 -0700 (PDT)
X-Received: by 2002:ae9:ed95:: with SMTP id c143mr1313150qkg.394.1590534619533;
 Tue, 26 May 2020 16:10:19 -0700 (PDT)
MIME-Version: 1.0
References: <20200521142047.169334-1-elver@google.com> <20200521142047.169334-10-elver@google.com>
 <CAKwvOdnR7BXw_jYS5PFTuUamcwprEnZ358qhOxSu6wSSSJhxOA@mail.gmail.com>
 <CAK8P3a0RJtbVi1JMsfik=jkHCNFv+DJn_FeDg-YLW+ueQW3tNg@mail.gmail.com>
 <20200526120245.GB27166@willie-the-truck> <CAK8P3a29BNwvdN1YNzoN966BF4z1QiSxdRXTP+BzhM9H07LoYQ@mail.gmail.com>
 <CANpmjNOUdr2UG3F45=JaDa0zLwJ5ukPc1MMKujQtmYSmQnjcXg@mail.gmail.com>
 <20200526173312.GA30240@google.com> <CAK8P3a3ZawPnzmzx4q58--M1h=v4X-1GtQLiwL1=G6rDK8=Wpg@mail.gmail.com>
In-Reply-To: <CAK8P3a3ZawPnzmzx4q58--M1h=v4X-1GtQLiwL1=G6rDK8=Wpg@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 27 May 2020 01:10:00 +0200
X-Gmail-Original-Message-ID: <CAK8P3a3UYQeXhiufUevz=rwe09WM_vSTCd9W+KvJHJcOeQyWVA@mail.gmail.com>
Message-ID: <CAK8P3a3UYQeXhiufUevz=rwe09WM_vSTCd9W+KvJHJcOeQyWVA@mail.gmail.com>
Subject: Re: [PATCH -tip v3 09/11] data_race: Avoid nested statement expression
To: Marco Elver <elver@google.com>
Cc: Will Deacon <will@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Dmitry Vyukov <dvyukov@google.com>, 
	Alexander Potapenko <glider@google.com>, Andrey Konovalov <andreyknvl@google.com>, 
	kasan-dev <kasan-dev@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@kernel.org>, 
	Peter Zijlstra <peterz@infradead.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Borislav Petkov <bp@alien8.de>
Content-Type: text/plain; charset="UTF-8"
X-Provags-ID: V03:K1:GWaoJg27TFe8X0nIQaZCPOwpTZD5fbVWKkZCwXZLlLcHaVqKZnJ
 W45FinNtM/ENNxOBwEOskQ8EoXH9sFizYnCDRGwSiTa086MUR8eNtukLvgZx8cjaLrrqdud
 cnvXLOf7CWocFOBwkyXAoblqKWSdXeOsXEtl33hKdZ9M/q1dcVwq6Cffn1L7C8Mct5MrkGd
 T0NLezv6eBQiRsOzneZpQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:dhZ6BwWzANs=:qDtuO0Q5KEVg1C+Om4YuiT
 ce8VzwTALYQLxA6mKyzKBJRYfOoKcsxKVXCo3xYmlQbXaOTc4g7DqapNypcEeuLWzS5qdc8aD
 Tix32I3lKnXF+vCNQX0KqKyoPzKFfGbwtV4kakbuGpIhix9thTFVsgGR4Uhzz81M/eUP75Tfu
 h0H7vU6ZKdLO+g9U0R3qrTAVsuWUdfR8Q4N3c3IYjmqsFZGyk2l+9aXr7a6xX0LhnLiDW92R0
 nu8VJebffywnNx4cGeCPhiDLvUtbFSe8Y/jmjAfPOvAlqn2pIggIgby48KQp7MfX6ovqB+rR3
 gLqCcfwrR/Jm1JdQCbbPjGgRdHSzxwBzg+wYvKL0LgdDgKLqdGYt/3SyVB+kWfv95QT1UWl5A
 V+cHsPCS3huleI3THtZX8Bdos1AgomVE76VTI7dPim0W7YERowQG0cpHpI+WDF17InWaw9d3Y
 Emo9Nuk1hjM/AtWhSzobZuDbSHjnjFW4Mr8/cBUk0Rert1yE2/eaH3PS4v48+pdEsWNXAKCoV
 /GgZ7brModA6NNCM/enUPz0aR4O+JlCxi1tyghdDV7xp+SRsM8truZh+hUx383AhLHkXHWo3L
 gLibOqsq7ikFys9h5R1JgzegF+oDgoiozStqRvrtMZHqFD5Eu4WmrIcMpRrj1IBViA0t6d7tG
 aJ30dm00+2bToRA7wXuCT+J7fomlauUgw4RzOEXwD7cpBt5ecD94dQ/Jgugan4EbiDGxxJkVX
 LwZq1ep28cSV4KPDeNM39ha/TmuiasyrRGONshltSpVEaL/lKiz1R8zWmfWgPehHbHK/WfAxG
 e3Bi+m8JREF+qi+cz+PTHmNfvxpSWXaq0ouyQI+B4FbeoN5V50=
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 217.72.192.74 is neither permitted nor denied by best guess
 record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
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

On Tue, May 26, 2020 at 9:00 PM Arnd Bergmann <arnd@arndb.de> wrote:
>
> On Tue, May 26, 2020 at 7:33 PM 'Marco Elver' via Clang Built Linux
> <clang-built-linux@googlegroups.com> wrote:
> > On Tue, 26 May 2020, Marco Elver wrote:
> > > On Tue, 26 May 2020 at 14:19, Arnd Bergmann <arnd@arndb.de> wrote:
> > > Note that an 'allyesconfig' selects KASAN and not KCSAN by default.
> > > But I think that's not relevant, since KCSAN-specific code was removed
> > > from ONCEs. In general though, it is entirely expected that we have a
> > > bit longer compile times when we have the instrumentation passes
> > > enabled.
> > >
> > > But as you pointed out, that's irrelevant, and the significant
> > > overhead is from parsing and pre-processing. FWIW, we can probably
> > > optimize Clang itself a bit:
> > > https://github.com/ClangBuiltLinux/linux/issues/1032#issuecomment-633712667
> >
> > Found that optimizing __unqual_scalar_typeof makes a noticeable
> > difference. We could use C11's _Generic if the compiler supports it (and
> > all supported versions of Clang certainly do).
> >
> > Could you verify if the below patch improves compile-times for you? E.g.
> > on fs/ocfs2/journal.c I was able to get ~40% compile-time speedup.
>
> Yes, that brings both the preprocessed size and the time to preprocess it
> with clang-11 back to where it is in mainline, and close to the speed with
> gcc-10 for this particular file.
>
> I also cross-checked with gcc-4.9 and gcc-10 and found that they do see
> the same increase in the preprocessor output, but it makes little difference
> for preprocessing performance on gcc.

Just for reference, I've tested this against a patch I made that completely
shortcuts READ_ONCE() on anything but alpha (which needs the
read_barrier_depends()):

--- a/include/linux/compiler.h
+++ b/include/linux/compiler.h
@@ -224,18 +224,21 @@ void ftrace_likely_update(struct
ftrace_likely_data *f, int val,
  * atomicity or dependency ordering guarantees. Note that this may result
  * in tears!
  */
-#define __READ_ONCE(x) (*(const volatile __unqual_scalar_typeof(x) *)&(x))
+#define __READ_ONCE(x) (*(const volatile typeof(x) *)&(x))

+#ifdef CONFIG_ALPHA /* smp_read_barrier_depends is a NOP otherwise */
 #define __READ_ONCE_SCALAR(x)                                          \
 ({                                                                     \
        __unqual_scalar_typeof(x) __x = __READ_ONCE(x);                 \
        smp_read_barrier_depends();                                     \
-       (typeof(x))__x;                                                 \
+       __x;                                                            \
 })
+#else
+#define __READ_ONCE_SCALAR(x) __READ_ONCE(x)
+#endif

 #define READ_ONCE(x)                                                   \
 ({                                                                     \

In the configuration I posted earlier, this produces noticeably faster
build times
patch, but yours gets most of the way: https://pastebin.com/pCwALmUD

Looking just at the "task-clock" output from 'perf stat make vmlinux -skj30'

                 clang-11          gcc-9
linux-next     6939594.65 msec   4191482.92 msec
Marco's patch  5399261.82 msec   3800409.58 msec
Arnd's patch   5273888.54 msec   3584550.23 msec

        Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a3UYQeXhiufUevz%3Drwe09WM_vSTCd9W%2BKvJHJcOeQyWVA%40mail.gmail.com.
