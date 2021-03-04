Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBRPGQSBAMGQETCMYEDQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3a.google.com (mail-vs1-xe3a.google.com [IPv6:2607:f8b0:4864:20::e3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CA1132DA40
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Mar 2021 20:21:42 +0100 (CET)
Received: by mail-vs1-xe3a.google.com with SMTP id v15sf4141322vso.17
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Mar 2021 11:21:42 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614885701; cv=pass;
        d=google.com; s=arc-20160816;
        b=Crb4UENWPq1l0eC3z8c66bREEF6C7C7NQ5hfJnsWmYOxee+OGaNX3zLfRgUPoEHu+h
         oJGCUJ4BJzJ3MR2P1jC+m0cKbKIZssDntXN9Jz4O9TQ3CYse6pcygmHGd7UECTcIpj8/
         Z9gercRp7N0Ez8eaDkxCmvl8ASA55bo13HK5dKkKGIL7CRb6c5etc2/y/PiCiHgeS18r
         6LHXZldtpF6dkST7d8kVmKkcBltlno8BGlp568lV2ak0/WjsXzt7eIfjTMyHpQsqJ4xH
         wdF876XcutfaWn2UyLvEWpYW72XiXZ7C3Yw2fwK7s/pTyLFyuwp+17VPEcb0TPceJ+E/
         OF7Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=HiQqn6ZyFRc6127OLV4TMitipi1/Hm0xWPPUjATdQNo=;
        b=cO73J0PlUp3sxaQE1HQ4t+ZVaZDleR6BFh4aJA14E/dHKzlAxVbCqs03k7JKFcR/Xk
         w4q9Kjxp3hWFd3QbIEwpmAHMRIn7xhqjsL75YnEt5xBLXdXz1pjv0hijfB0s2t/f0mVO
         bldugOSIi5Iqe8/hG/ex6xg9XCoNXHhHIxQBZS3nmQCS9cQtn7tD48uGxf/Eme86Rlyj
         u/zO285wDhIB5eZaw/Up4lWSreBGRzJH/BGuifikv1Vp1061Q/gOLyeL27Jmnq2Lsny5
         4O5Fyq7BOkH7stfBeBIJxplkaY2WCJ0PrrSV7rFDgVo47XuFYtZqdc2SznURaF+Lpm7i
         fzIw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="J7EvIFn/";
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::133 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=HiQqn6ZyFRc6127OLV4TMitipi1/Hm0xWPPUjATdQNo=;
        b=OT+B3Xt7bhKATQ8JnfXObN2voCBEGdgKP6avu+UhtpNEStRlq0PRP7qUHEbolLXEFx
         bSqAbZq6PUmk0i0DOaToeEvWdWEGOpv0785WtU4nBdE7dKn7O8cghBZxEIEMAhkMy3qQ
         tm5g2T/nYTIlKO+cZthsM3KRbk9Q/l7m8DhvOv1LE3l0OYu7XUHf5PrkMRR4ngEq7jQB
         I7vra9UVJcQsRoDwKRGNlJqASrfIgjW8DuGlbAatPSj+dyQTtwnlrJNslItzydwHJoJM
         pqTz0g87hWRCEo6u9Cah4UO8ZDTxbsYGgQtFzYvoaa4/y2k4ftn3lXuKkdt6XEq/RJf/
         gJvQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HiQqn6ZyFRc6127OLV4TMitipi1/Hm0xWPPUjATdQNo=;
        b=Nk/OSe2P0oYlF71Ah7ffDk6tSfqH6rEPs1/qPitADmhCwqjnx8szERy4tEE/qB63kl
         otAvLJ5NwDFK49YXGupwdCym5yZTQicfRdPPqaZfn2I1E6vLAorWRQgo+gn4g6fixg2z
         Dn7mthEZuTGg1fra2+CGEQaXuQVSpjjUflMzCDOo+AKIlM/4HaH93cIEJclpq+NDz10w
         lvFf5ZA7LTOosiTAQQkAow1bco0YRwdDgKrBZEv7y5lsY6h7keQ4HzPKQ7jm10odE2R+
         q5hew78qpSGTrn1wCvHSGMluS1f67/wIyetb8nxe4M0w+H6+Hj+IYaJzb/DG3+mgPkqN
         aWSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HiQqn6ZyFRc6127OLV4TMitipi1/Hm0xWPPUjATdQNo=;
        b=EGZ2gcZVhoPRLPOC5xDL74dt9LlyVZYgXzKrt8fEGWjgELBBITc4gmvJi35Lqm0q6a
         LxeV+EsQiJyIXq22mexmBcsuglQUAqtuHxF91ApCHO7QTi5qCdnn5S28nmN/teNC+P8F
         exJUyVCvevLBi74r4uygyJmExwv6tzuk9ufm/38frLme/6MSEPrfDSUh5XxHUzmqk9d+
         uT+QP61Yyr+N7owAELRN523vuPxemS1bWzJmlYZ2P9baznv/n4zw7M2I5xBTrCYOV/V3
         M+7abMIuClBUC3uhBboPg/4YccCqzobn/RMDTIQS2loahnaKAmTplEKFv7EkRTvlbSex
         0EXA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532lbBnruN54rsnXwRL7vBP6VNKxXg1d9Ow9MBlegYKiyVf0XJZI
	aDInsKXmfpDPd8W59wSkkmg=
X-Google-Smtp-Source: ABdhPJw+QKIMIY8x14H+M7i5ZWMw6l/kxRsAKIgB5WkgeHMwFFZa/1vzjk6WvOdZCxu+MmCQJRg2yw==
X-Received: by 2002:ab0:20c4:: with SMTP id z4mr3527847ual.77.1614885701655;
        Thu, 04 Mar 2021 11:21:41 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:fa8a:: with SMTP id f10ls902168vsq.0.gmail; Thu, 04 Mar
 2021 11:21:41 -0800 (PST)
X-Received: by 2002:a67:f318:: with SMTP id p24mr3869584vsf.54.1614885701146;
        Thu, 04 Mar 2021 11:21:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614885701; cv=none;
        d=google.com; s=arc-20160816;
        b=OT58cmYnorrMT1ku1PKG6LRDLsFAaVPeDDv28IscTPDSlYBSGOsRM+q8BNGc54W1FE
         O9EstHRiohwAONAPdBmm8UKkoYlqy9tvrtKdP9OiEqiYSQYPpqAuuKrTPDgJ+sQqierd
         aKCEEIS5mEVfqjYj9XmPO1YMtE4d9vKAFzCyadIzdcHFv/hkIiMOvkJIv7lveaJwiHeG
         W2ubKBxiMcJolQXll7FbYOdx+Tuzl7x0S4Nz91gZtPefjHei/1oCSzIJ//GpWVAWUP8C
         20U2lWErfq1DDUgMBVbFggRk4cM92wN2k5tSUdowMfxY/s04SVNSFhk0k9mLAwpockMe
         OrGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=R5uvdWP3IXyJRb9GkUi22skzm53AYXgUrSMSuvQhHNE=;
        b=pjmJwqJoa1j5st1GkAR2wmAI/08/dNuMnSPYVWG7nlNpNC7tK11hLwnAW/Nya1YRnJ
         i4geweAek2fn6Oys1TSgBRpwgHHdpV5DlpMV8JTRLSj7Mjz/V07qyfDKHYf/meKsyS6U
         YbbJcA2v7TMjMMdKHIVHqeVJVIv1BDaSpSY60d7ZXH+wLblF/ak1PqR/wLtV7GzVm2no
         QDVr9MuyyODHCYLgDzhzbpZBVa10XPSgeu+dwsMC6iyMe+RlVE+RTmSXG2dppJUqDLeJ
         bRXyAo80WdASSt0A+X0paS9jCcAyTW2as8H9B6cqLgOP0LrCxNKH20il7Ij9vkqmwUWL
         f8Mg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="J7EvIFn/";
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::133 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x133.google.com (mail-il1-x133.google.com. [2607:f8b0:4864:20::133])
        by gmr-mx.google.com with ESMTPS id d23si40140vsq.1.2021.03.04.11.21.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Mar 2021 11:21:41 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::133 as permitted sender) client-ip=2607:f8b0:4864:20::133;
Received: by mail-il1-x133.google.com with SMTP id i18so25858479ilq.13
        for <clang-built-linux@googlegroups.com>; Thu, 04 Mar 2021 11:21:41 -0800 (PST)
X-Received: by 2002:a92:444e:: with SMTP id a14mr5157873ilm.215.1614885700730;
 Thu, 04 Mar 2021 11:21:40 -0800 (PST)
MIME-Version: 1.0
References: <YD9dUkGhlRT8vvcy@hirez.programming.kicks-ass.net>
 <20210303224653.2579656-1-joshdon@google.com> <CAKwvOdmijctJfM3gNfwEVjaQyp3LZkhnAwgsT7EBhsSBJyfLAA@mail.gmail.com>
 <CA+icZUUw0T2NpTcN4witbzYr1L7dF=rHKWq14ji_426G02QoEw@mail.gmail.com>
In-Reply-To: <CA+icZUUw0T2NpTcN4witbzYr1L7dF=rHKWq14ji_426G02QoEw@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Thu, 4 Mar 2021 20:21:03 +0100
Message-ID: <CA+icZUVkvoAzpq383taD1Xg9F80odV-XfiTJCLF7x_b=_tGdXQ@mail.gmail.com>
Subject: Re: [PATCH v2] sched: Optimize __calc_delta.
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Josh Don <joshdon@google.com>, Ingo Molnar <mingo@redhat.com>, 
	Peter Zijlstra <peterz@infradead.org>, Juri Lelli <juri.lelli@redhat.com>, 
	Vincent Guittot <vincent.guittot@linaro.org>, Dietmar Eggemann <dietmar.eggemann@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Ben Segall <bsegall@google.com>, Mel Gorman <mgorman@suse.de>, 
	Daniel Bristot de Oliveira <bristot@redhat.com>, Nathan Chancellor <nathan@kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Clement Courbet <courbet@google.com>, 
	Oleg Rombakh <olegrom@google.com>, Bill Wendling <morbo@google.com>
Content-Type: multipart/mixed; boundary="0000000000008c030c05bcbae088"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="J7EvIFn/";       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::133
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

--0000000000008c030c05bcbae088
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Mar 4, 2021 at 7:24 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> On Thu, Mar 4, 2021 at 6:34 PM 'Nick Desaulniers' via Clang Built
> Linux <clang-built-linux@googlegroups.com> wrote:
> >
> > On Wed, Mar 3, 2021 at 2:48 PM Josh Don <joshdon@google.com> wrote:
> > >
> > > From: Clement Courbet <courbet@google.com>
> > >
> > > A significant portion of __calc_delta time is spent in the loop
> > > shifting a u64 by 32 bits. Use `fls` instead of iterating.
> > >
> > > This is ~7x faster on benchmarks.
> > >
> > > The generic `fls` implementation (`generic_fls`) is still ~4x faster
> > > than the loop.
> > > Architectures that have a better implementation will make use of it. =
For
> > > example, on X86 we get an additional factor 2 in speed without dedica=
ted
> > > implementation.
> > >
> > > On gcc, the asm versions of `fls` are about the same speed as the
> > > builtin. On clang, the versions that use fls are more than twice as
> > > slow as the builtin. This is because the way the `fls` function is
> > > written, clang puts the value in memory:
> > > https://godbolt.org/z/EfMbYe. This bug is filed at
> > > https://bugs.llvm.org/show_bug.cgi?id=3D49406.
> >
> > Hi Josh, Thanks for helping get this patch across the finish line.
> > Would you mind updating the commit message to point to
> > https://bugs.llvm.org/show_bug.cgi?id=3D20197?
> >
> > >
> > > ```
> > > name                                   cpu/op
> > > BM_Calc<__calc_delta_loop>             9.57ms =C2=B112%
> > > BM_Calc<__calc_delta_generic_fls>      2.36ms =C2=B113%
> > > BM_Calc<__calc_delta_asm_fls>          2.45ms =C2=B113%
> > > BM_Calc<__calc_delta_asm_fls_nomem>    1.66ms =C2=B112%
> > > BM_Calc<__calc_delta_asm_fls64>        2.46ms =C2=B113%
> > > BM_Calc<__calc_delta_asm_fls64_nomem>  1.34ms =C2=B115%
> > > BM_Calc<__calc_delta_builtin>          1.32ms =C2=B111%
> > > ```
> > >
> > > Signed-off-by: Clement Courbet <courbet@google.com>
> > > Signed-off-by: Josh Don <joshdon@google.com>
> > > ---
> > >  kernel/sched/fair.c  | 19 +++++++++++--------
> > >  kernel/sched/sched.h |  1 +
> > >  2 files changed, 12 insertions(+), 8 deletions(-)
> > >
> > > diff --git a/kernel/sched/fair.c b/kernel/sched/fair.c
> > > index 8a8bd7b13634..a691371960ae 100644
> > > --- a/kernel/sched/fair.c
> > > +++ b/kernel/sched/fair.c
> > > @@ -229,22 +229,25 @@ static void __update_inv_weight(struct load_wei=
ght *lw)
> > >  static u64 __calc_delta(u64 delta_exec, unsigned long weight, struct=
 load_weight *lw)
> > >  {
> > >         u64 fact =3D scale_load_down(weight);
> > > +       u32 fact_hi =3D (u32)(fact >> 32);
> > >         int shift =3D WMULT_SHIFT;
> > > +       int fs;
> > >
> > >         __update_inv_weight(lw);
> > >
> > > -       if (unlikely(fact >> 32)) {
> > > -               while (fact >> 32) {
> > > -                       fact >>=3D 1;
> > > -                       shift--;
> > > -               }
> > > +       if (unlikely(fact_hi)) {
> > > +               fs =3D fls(fact_hi);
> > > +               shift -=3D fs;
> > > +               fact >>=3D fs;
> > >         }
> > >
> > >         fact =3D mul_u32_u32(fact, lw->inv_weight);
> > >
> > > -       while (fact >> 32) {
> > > -               fact >>=3D 1;
> > > -               shift--;
> > > +       fact_hi =3D (u32)(fact >> 32);
> > > +       if (fact_hi) {
> > > +               fs =3D fls(fact_hi);
> > > +               shift -=3D fs;
> > > +               fact >>=3D fs;
> > >         }
> > >
> > >         return mul_u64_u32_shr(delta_exec, fact, shift);
> > > diff --git a/kernel/sched/sched.h b/kernel/sched/sched.h
> > > index 10a1522b1e30..714af71cf983 100644
> > > --- a/kernel/sched/sched.h
> > > +++ b/kernel/sched/sched.h
> > > @@ -36,6 +36,7 @@
> > >  #include <uapi/linux/sched/types.h>
> > >
> > >  #include <linux/binfmts.h>
> > > +#include <linux/bitops.h>
> >
> > This hunk of the patch is curious.  I assume that bitops.h is needed
> > for fls(); if so, why not #include it in kernel/sched/fair.c?
> > Otherwise this potentially hurts compile time for all TUs that include
> > kernel/sched/sched.h.
> >
>
> I have v2 as-is in my custom patchset and booted right now on bare metal.
>
> As Nick points out moving the include makes sense to me.
> We have a lot of include at the wrong places increasing build-time.
>

I tried with the attached patch.

$ LC_ALL=3DC ll kernel/sched/fair.o
-rw-r--r-- 1 dileks dileks 1.2M Mar  4 20:11 kernel/sched/fair.o

- Sedat -

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CA%2BicZUVkvoAzpq383taD1Xg9F80odV-XfiTJCLF7x_b%3D_tGdXQ%4=
0mail.gmail.com.

--0000000000008c030c05bcbae088
Content-Type: text/x-patch; charset="US-ASCII"; 
	name="0001-sched-fair-Move-include-after-__calc_delta-optimizat.patch"
Content-Disposition: attachment; 
	filename="0001-sched-fair-Move-include-after-__calc_delta-optimizat.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_klv969x50>
X-Attachment-Id: f_klv969x50

RnJvbSBhZmQ0NWNkNzhjMjE5NjBjNmU5MzcwMjFmMDk1ZTVmOGY1MWZlZjdhIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBTZWRhdCBEaWxlayA8c2VkYXQuZGlsZWtAZ21haWwuY29tPgpE
YXRlOiBUaHUsIDQgTWFyIDIwMjEgMjA6MDU6MzAgKzAxMDAKU3ViamVjdDogW1BBVENIXSBzY2hl
ZC9mYWlyOiBNb3ZlIGluY2x1ZGUgYWZ0ZXIgX19jYWxjX2RlbHRhIG9wdGltaXphdGlvbgogY2hh
bmdlCgpTaWduZWQtb2ZmLWJ5OiBTZWRhdCBEaWxlayA8c2VkYXQuZGlsZWtAZ21haWwuY29tPgot
LS0KIGtlcm5lbC9zY2hlZC9mYWlyLmMgIHwgMiArKwoga2VybmVsL3NjaGVkL3NjaGVkLmggfCAx
IC0KIDIgZmlsZXMgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZm
IC0tZ2l0IGEva2VybmVsL3NjaGVkL2ZhaXIuYyBiL2tlcm5lbC9zY2hlZC9mYWlyLmMKaW5kZXgg
NWZkYTE3NTFmYmQxLi5iOWYxMGFlOTJlM2YgMTAwNjQ0Ci0tLSBhL2tlcm5lbC9zY2hlZC9mYWly
LmMKKysrIGIva2VybmVsL3NjaGVkL2ZhaXIuYwpAQCAtMjAsNiArMjAsOCBAQAogICogIEFkYXB0
aXZlIHNjaGVkdWxpbmcgZ3JhbnVsYXJpdHksIG1hdGggZW5oYW5jZW1lbnRzIGJ5IFBldGVyIFpp
amxzdHJhCiAgKiAgQ29weXJpZ2h0IChDKSAyMDA3IFJlZCBIYXQsIEluYy4sIFBldGVyIFppamxz
dHJhCiAgKi8KKyNpbmNsdWRlIDxsaW51eC9iaXRvcHMuaD4KKwogI2luY2x1ZGUgInNjaGVkLmgi
CiAKIC8qCmRpZmYgLS1naXQgYS9rZXJuZWwvc2NoZWQvc2NoZWQuaCBiL2tlcm5lbC9zY2hlZC9z
Y2hlZC5oCmluZGV4IDcxNGFmNzFjZjk4My4uMTBhMTUyMmIxZTMwIDEwMDY0NAotLS0gYS9rZXJu
ZWwvc2NoZWQvc2NoZWQuaAorKysgYi9rZXJuZWwvc2NoZWQvc2NoZWQuaApAQCAtMzYsNyArMzYs
NiBAQAogI2luY2x1ZGUgPHVhcGkvbGludXgvc2NoZWQvdHlwZXMuaD4KIAogI2luY2x1ZGUgPGxp
bnV4L2JpbmZtdHMuaD4KLSNpbmNsdWRlIDxsaW51eC9iaXRvcHMuaD4KICNpbmNsdWRlIDxsaW51
eC9ibGtkZXYuaD4KICNpbmNsdWRlIDxsaW51eC9jb21wYXQuaD4KICNpbmNsdWRlIDxsaW51eC9j
b250ZXh0X3RyYWNraW5nLmg+Ci0tIAoyLjMwLjEKCg==
--0000000000008c030c05bcbae088--
