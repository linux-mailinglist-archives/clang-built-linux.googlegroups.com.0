Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBWFHW7VAKGQE62QOX6Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73f.google.com (mail-qk1-x73f.google.com [IPv6:2607:f8b0:4864:20::73f])
	by mail.lfdr.de (Postfix) with ESMTPS id C94C1883B1
	for <lists+clang-built-linux@lfdr.de>; Fri,  9 Aug 2019 22:13:13 +0200 (CEST)
Received: by mail-qk1-x73f.google.com with SMTP id j81sf86603340qke.23
        for <lists+clang-built-linux@lfdr.de>; Fri, 09 Aug 2019 13:13:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565381592; cv=pass;
        d=google.com; s=arc-20160816;
        b=RkGRBMS8GG397YNbnG+1kns/1E3+Y5nE/uogRp5VV/T0DMHB0ZDpVriL317eKddCpu
         NtMYs5X8xHeKawj0W3tynIYiT3gQ6At1tPmgVt9z/aQearwWh2xIGjDaRDKky3KO5UMR
         UAX9TdUUuqiwaCAi1BuXm0BJyY9W+icwlOUF+CNJ3ATJNNYAULNW3L9nOXxcQ2MSvdP6
         v3fD6FWPrnxrg0WSKDvg60pVvEfSsoaG73QZn9JA+kZqwvk7eNOlXqeoAvxvGw14i5CJ
         VdvwqgHGgH1zBlEW/lHoyEGyzEL+10HvN9K3rBgueqzCiUU/BSR8JLyWNUEyv7CK7YWF
         XTjg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature;
        bh=Zn5/A0iy1gU6iB/kRLtwgaf+wKoOyxhIUe2HEQFz8B4=;
        b=Ah4yIQ4tS59lJaUcGS7hbzmJM96ffBe+01VKhXbgfChKLvMyGH/sEC6YKLKKbzq+Cs
         ieR8xoYZ6O64lEghpUrvKY5wXbdkR30S2Xl8m3ET7kk0ZHKRPurUA5ndYy61iQAcJdKj
         DXTLdf8rSlOAZSexlX+9r7O2bwjzRiDV4UXLMniJoalsXar3WRCk2wgeilJlvBjPoPdY
         pnyWVCKst7dFBIuMiNIKESZlg7k/ZDRGhYLcFo/db+ZPF918W9I+hlSTQNp6v37rHxhV
         JA2e6DI7shZnhqTQm1RywnzPpth+b9HdXBnAYvqR7ygZAAGUZouNlthxpfuhVfN1Vhst
         sEdQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of arndbergmann@gmail.com designates 209.85.160.195 as permitted sender) smtp.mailfrom=arndbergmann@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Zn5/A0iy1gU6iB/kRLtwgaf+wKoOyxhIUe2HEQFz8B4=;
        b=nhmApR1YhTOIL0giMWeijUYgk3L3Z6NOQk4dg/K61hSxi/oBKwpp3P5s91tjExN4IT
         6B++GsSENHGj2igO4CnmGa6oyqwduVcJQk6znoZfT+Xzyrnma3RgEgzU8nGvs/frtPF3
         CzQh7rGwmJVe6fcDW+PBOfaaU7Uf+5+hUeYxFb9+pG4kYceaNmskimiCWK/aaw5HyAaw
         w9q5ASLA++jLqhqqvuaJxM6CsWdpNeIYu6awMtUHG+R2pqJznq4aa3xJMOpFaroMzV9l
         +J3dBU0px+797TgHoWIbTHHqc2Ig+81ToHYQNgjRmjANruhMGdX0NEXAmQURN32OfZxm
         qeKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Zn5/A0iy1gU6iB/kRLtwgaf+wKoOyxhIUe2HEQFz8B4=;
        b=qx2EWFwGX/4uqHOCOezKt7DRwX1L4z2v27V+/RfSjVFwJtpKCe8eHL4c4xzxDXmTSk
         Vq6zed/cYgt5Yw16jgL/JJtVuCR4Ly0QCYhdQT+YVq6pWvdJpsoWLSnf68TlVBteWxEj
         GuJzaOsUUqI04GIltKdjw7B7oCmSqf67GnCti/hs1N1dGIURS5IioIo2auxySvXpUsiY
         HQgFeBDwQbdOhSALigfFC17y5GPu0f0638lq0YfizVVDkIdOCuttUmzpvqK0R2yMUfgL
         SQzBQh2eCQiwrUCpJYQOfPjlnwRkE/zBV29L/+orNM3N38//sEhbteqXbgE0uGnQh3fV
         nhzQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXMJbBe4/Pzy/OrFQi8BbeX/wKN4KKLu5sTy/Z+DGEidSb6xTvi
	s7yOUebWonx3/z1FXgs8AQY=
X-Google-Smtp-Source: APXvYqxg5odqtjb5tAJwSmYombusyYA08211ETcCxmzlBkmwX9n0Zo1nv8fRpNUwuny5Az8k2jXV5A==
X-Received: by 2002:a37:8d46:: with SMTP id p67mr12554128qkd.187.1565381592810;
        Fri, 09 Aug 2019 13:13:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:32a4:: with SMTP id z33ls1055272qtd.13.gmail; Fri, 09
 Aug 2019 13:13:12 -0700 (PDT)
X-Received: by 2002:ac8:e45:: with SMTP id j5mr6769378qti.149.1565381592543;
        Fri, 09 Aug 2019 13:13:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565381592; cv=none;
        d=google.com; s=arc-20160816;
        b=CHeEk35qkciubNWVZrhmqRjKkdBXqVaMtDqHT6YvoInFmjsaHG0AGZsqYplwsg8m4s
         Dg2F2F6Wec263RJdERHrSQmlJCoWFyJBfEXMBcw+AlY3ZqflJEWSBEXzhyOrEGMv/LE5
         LZkEsbFPC5OgcGy6BNuqidkRjdgKCX1CIwXcCqIbw5gI3x1u6qyV15KzVS1KKaveJYtn
         RsL8LYdT7D46iD0JT5DT5fzivwX+PIYyspmBJaJleS/vE2CK+dXp+q6jz1CpYUj1jJWk
         KkoBndlR19OmGEnoPJhM+2HP0/OEYI3b6kKEifUhZIUp+W+ilDxRRhB828VIP1mdVp7V
         hFrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version;
        bh=GbPWtVLcWUFZEanEykp/OCGxgAAWNiMhq/BzUwSZwpc=;
        b=xXwbv8khrfSnPtsxH6LrTCHFvefImorOFOqbQcJE5o4DFhctOh3Thu5jeJFmi1YOR6
         uKH7GYlpyAcdRIVyRFdZ9q5pxoBHjeqRbI4VXrSTVBzGJ3VpmytoeSko1rxZYn8M4bx6
         4U6t4EEdpcOFr9hTQTrH801FPePfXOopPjl6LOOL+Ig61jyo8E2bgeJ/k6+ZkyVfbMKF
         4aWsLy709hZSbb6t1dbLMgrB2oDhRTQA7/87fibIhL6W7IvywlBVLqhheqFyEVS4+Jbv
         JZ8yi2E7WMp9a6sItEKoIaTJEow5nDHSeziTCd+bZ+Ro22TWSi6fIdIasDGVjFzuYcli
         5qzA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of arndbergmann@gmail.com designates 209.85.160.195 as permitted sender) smtp.mailfrom=arndbergmann@gmail.com
Received: from mail-qt1-f195.google.com (mail-qt1-f195.google.com. [209.85.160.195])
        by gmr-mx.google.com with ESMTPS id r4si4354692qkb.1.2019.08.09.13.13.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Aug 2019 13:13:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of arndbergmann@gmail.com designates 209.85.160.195 as permitted sender) client-ip=209.85.160.195;
Received: by mail-qt1-f195.google.com with SMTP id d17so18087504qtj.8
        for <clang-built-linux@googlegroups.com>; Fri, 09 Aug 2019 13:13:12 -0700 (PDT)
X-Received: by 2002:a0c:ba2c:: with SMTP id w44mr19391116qvf.62.1565381592182;
 Fri, 09 Aug 2019 13:13:12 -0700 (PDT)
MIME-Version: 1.0
References: <87h873zs88.fsf@concordia.ellerman.id.au> <20190809182106.62130-1-ndesaulniers@google.com>
 <CAK8P3a3LynWTbpV8=VPm2TqgNM2MnoEyCPJd0PL2D+tcZqJgHg@mail.gmail.com> <20190809220301.Horde.AR6y4Bx4WGIq58V9K0En9g4@messagerie.si.c-s.fr>
In-Reply-To: <20190809220301.Horde.AR6y4Bx4WGIq58V9K0En9g4@messagerie.si.c-s.fr>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 9 Aug 2019 22:12:56 +0200
Message-ID: <CAK8P3a1AwmAe+PpHTRmN153fhG4ZkF_pb+240rj1ZAg-S6SKeg@mail.gmail.com>
Subject: Re: [PATCH] powerpc: fix inline asm constraints for dcbz
To: Christophe Leroy <christophe.leroy@c-s.fr>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, linuxppc-dev <linuxppc-dev@lists.ozlabs.org>, 
	Paul Mackerras <paulus@samba.org>, Benjamin Herrenschmidt <benh@kernel.crashing.org>, 
	kbuild test robot <lkp@intel.com>, Nathan Chancellor <natechancellor@gmail.com>, 
	Segher Boessenkool <segher@kernel.crashing.org>, Michael Ellerman <mpe@ellerman.id.au>, 
	Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of arndbergmann@gmail.com designates 209.85.160.195 as
 permitted sender) smtp.mailfrom=arndbergmann@gmail.com
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

On Fri, Aug 9, 2019 at 10:02 PM Christophe Leroy
<christophe.leroy@c-s.fr> wrote:
>
> Arnd Bergmann <arnd@arndb.de> a =C3=A9crit :
> > On Fri, Aug 9, 2019 at 8:21 PM 'Nick Desaulniers' via Clang Built
> > Linux <clang-built-linux@googlegroups.com> wrote:
> >
> >>  static inline void dcbz(void *addr)
> >>  {
> >> -       __asm__ __volatile__ ("dcbz %y0" : : "Z"(*(u8 *)addr) : "memor=
y");
> >> +       __asm__ __volatile__ ("dcbz %y0" : "=3DZ"(*(u8 *)addr) :: "mem=
ory");
> >>  }
> >>
> >>  static inline void dcbi(void *addr)
> >>  {
> >> -       __asm__ __volatile__ ("dcbi %y0" : : "Z"(*(u8 *)addr) : "memor=
y");
> >> +       __asm__ __volatile__ ("dcbi %y0" : "=3DZ"(*(u8 *)addr) :: "mem=
ory");
> >>  }
> >
> > I think the result of the discussion was that an output argument only k=
ind-of
> > makes sense for dcbz, but for the others it's really an input, and clan=
g is
> > wrong in the way it handles the "Z" constraint by making a copy, which =
it
> > doesn't do for "m".
> >
> > I'm not sure whether it's correct to use "m" instead of "Z" here, which
> > would be a better workaround if that works. More importantly though,
> > clang really needs to be fixed to handle "Z" correctly.
>
> As the benefit is null, I think the best is probably to reverse my
> original commit until at least CLang is fixed, as initialy suggested
> by mpe

Yes, makes sense.

There is one other use of the "Z" constraint, so on top of the revert, I
think it might be helpful if Nick could check if the patch below makes
any difference with clang and, if it does, whether the current version
is broken.

       Arnd

diff --git a/arch/powerpc/include/asm/io.h b/arch/powerpc/include/asm/io.h
index 23e5d5d16c7e..28b467779328 100644
--- a/arch/powerpc/include/asm/io.h
+++ b/arch/powerpc/include/asm/io.h
@@ -106,7 +106,7 @@ static inline u##size name(const volatile u##size
__iomem *addr)    \
 {                                                                      \
        u##size ret;                                                    \
        __asm__ __volatile__("sync;"#insn" %0,%y1;twi 0,%0,0;isync"     \
-               : "=3Dr" (ret) : "Z" (*addr) : "memory");                 \
+               : "=3Dr" (ret) : "m" (*addr) : "memory");                 \
        return ret;                                                     \
 }

@@ -114,7 +114,7 @@ static inline u##size name(const volatile u##size
__iomem *addr)    \
 static inline void name(volatile u##size __iomem *addr, u##size val)   \
 {                                                                      \
        __asm__ __volatile__("sync;"#insn" %1,%y0"                      \
-               : "=3DZ" (*addr) : "r" (val) : "memory");                 \
+               : "=3Dm" (*addr) : "r" (val) : "memory");                 \
        mmiowb_set_pending();                                           \
 }

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAK8P3a1AwmAe%2BPpHTRmN153fhG4ZkF_pb%2B240rj1ZAg-S6SKeg%4=
0mail.gmail.com.
