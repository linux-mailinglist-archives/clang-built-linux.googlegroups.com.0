Return-Path: <clang-built-linux+bncBDYJPJO25UGBB4PERL3QKGQEE7S3JUA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa37.google.com (mail-vk1-xa37.google.com [IPv6:2607:f8b0:4864:20::a37])
	by mail.lfdr.de (Postfix) with ESMTPS id 90A631F7061
	for <lists+clang-built-linux@lfdr.de>; Fri, 12 Jun 2020 00:38:42 +0200 (CEST)
Received: by mail-vk1-xa37.google.com with SMTP id f5sf2017390vke.20
        for <lists+clang-built-linux@lfdr.de>; Thu, 11 Jun 2020 15:38:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591915121; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ud3H/UuJfRhgRbfB3Xxp4UiCPKPOzO0s90Fa/kr6M/EpJia+Q7wtjwfQ3KE8JE9+Hr
         rS4jXLON78FgHJCHKBmRJ1qUQXQICohLrZGOCL3XgOEPlU90an7eAAJrM9oRNpUsekaj
         3LCDJRwIAVVoOB3/I0E4WZV1z/B290EFRxZvuodWwPA+Y9Y83/19yOnNxZRk5UPpOL0d
         Ncoe8SqOXxNNajhTFbcc9cbQ/fXa0fwxYJDSC6lZb2DqPprr6oy/0ogNvvn+SXmg1Cge
         dQCtATswuExV9XXdKb0ZLPNmt0JGdGwgAVcIDe//ALhoLfEFAssx3rm5gnU312KPfFhN
         MyUw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:from:subject:date
         :message-id:mime-version:dkim-signature;
        bh=KPH4af0LGPoo2GcUrsTmuYXt8sVP9zq9y8ysEoOZtSc=;
        b=iJTw+JAl5fMt9kDswxE2Jn58CRDVB8V9g8BdeIgecPp9o29g6Mrx/yqJEARbHyDHyt
         qZGHmJ4tOcn7N5m4jdbFGQEXnn29n3MXpQOG/UWACECrltC09rhpTY6tMCsjVmhHulDS
         JCLriMRAuCNtZeTe4umpOsMwz3oR5/0xLzk916qNzGZuTSVWc7U3xtva9eEvoTUffkmd
         4+lBKqxhjTOPz9Tyo6UMACJ5PtWToE5rQUZoHtuo+0jOdCnLrL44Vs8GZ0bDEEoJPVZh
         ZOCmA87fcUy3FSh4eK41ENCx+egxiWYSKze6Ep8tljNLHepTojYkVMiyprxtsHMzsP+7
         1iRw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=KDmaFm8v;
       spf=pass (google.com: domain of 3cllixgwkaf0i89n5pgid9mnbjjbg9.7jh@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3cLLiXgwKAF0I89N5PGID9MNBJJBG9.7JH@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:message-id:date:subject:from:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=KPH4af0LGPoo2GcUrsTmuYXt8sVP9zq9y8ysEoOZtSc=;
        b=m2AODSgw2qA4sTkdTstiJAzPsRBSOm8/eyIfysDXpPzKYLipqQffM5sxxX4ldnoI2V
         N57O+ENtv5C3KanvudjqrUfaKRo54HIBtmKszBnWj1n9+4k6R2lmS+ZwRQQi8KdVfsDB
         rXeCps3d3RDWATrAkDXc5BUs2n35tF/thKz9NXqon5C2yiyfzKFQhkmoUtKi4EeQRzNK
         6PokKqxx+ARDwFPwh25TUvyHgHZruUv9J2Rrz+AoXBVrVkuSLnnofTTAJkNp8SDF7hkY
         0cYD7hFgGnOvYpcI3dcvNusKRZojVCiLSaUG/cqPDgUdo76I7tKUAiKqUzuQWmP95bvJ
         yxgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:message-id:date:subject:from:to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KPH4af0LGPoo2GcUrsTmuYXt8sVP9zq9y8ysEoOZtSc=;
        b=laJJFbHcEPgt9ECavvHduhJKDbCsqWSSLiiMbGDRpuUhzACXrt2yOdWn5NxY5Kh8vC
         7k3hEtHXmtAn5r4jwPIl0D789hlJqJ7dMaO52t04KsY+RNErQ5FAXatVBR24/UxEFsXz
         TrwwiEkLtf9g0NjTgwYwlN/gFlmp3i3GhogdkGwUe+trQbplBUPlf70A2cJT0oLY8rde
         d95A19EPGXdZH/wHKKJOLtOV+C+2/9/xe3h5f9ebZ/MZ4ojaiUqKAsFKSd48uGique38
         uaHTblqBf1/rvAlwPIo8edGx4rlVJEy7tjT6w/jI27mLHvNh0vacxK17Gro0nKe4+EE4
         ju4A==
X-Gm-Message-State: AOAM533QSD09xEf3iRLJQGe+ekvR8CFlJxP93Kguzs41bRTMttX1nVlH
	Vugi881wwFkZt7QY/LbpxXc=
X-Google-Smtp-Source: ABdhPJzpBW4WxAgtQZEDFqrf9pKoSnX9KbJhVbAIxzBsS3H95AVVCPaIQAQIlY3zhjqnu4XJXo4q4w==
X-Received: by 2002:ab0:156d:: with SMTP id p42mr8429747uae.121.1591915121580;
        Thu, 11 Jun 2020 15:38:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:fc16:: with SMTP id o22ls451538vsq.3.gmail; Thu, 11 Jun
 2020 15:38:41 -0700 (PDT)
X-Received: by 2002:a67:7d81:: with SMTP id y123mr7850743vsc.126.1591915121197;
        Thu, 11 Jun 2020 15:38:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591915121; cv=none;
        d=google.com; s=arc-20160816;
        b=pIHZF1f3f78o3nGrvjTS1YMcE1e4f3fjEtYJSl0lBZvNsltTYD+xIKLdRz3K/4wTbm
         QYqcYqt7JdrtRWiaQlIxYLC0YePq0mee1HI9keerMmnRUAjpqvtVTzCd9PJ1+zVzclHi
         a4jwdVFgdefUE71abtGH5JRkuojegFt/R8mb9ewSBoHg2qMAr3Q6FMNPHE8kyTN3d76H
         3J7UWfo8oHOSMsWJ8n60e3rolWgMb9PeHGB7Xh42oKjICRoqPxtG0VEE+5FRZtKLCunU
         Lfvp1g26zNFxQegggK+Oq+iClOmU6d/Pavi0rxhh04eGrs0YYpVMC3b8JfjwX2OaOfdP
         aAzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:from:subject:date:message-id:mime-version:dkim-signature;
        bh=vH1Jdl9UovulKp0PaaP+MmxVuSnD40skakQX91jUExE=;
        b=pyyp94WIjdEu3FEICt97AK2fsfiMsWnXNvsboZZr9flihr9ahP1XaBOxOrl/Q41GSK
         lMJS5W5tRoeBd5gAvf4hA59Nh+v6g65TAmgW3NgsStb1XSGTUvZKKUQRoi/BdPRLquF6
         bZsWxCX6v57hs+fhevADv7fFudrSpa5zbc1KxuYwyzJuEaZ+4SntqZCj7hi7+sPAmCZf
         sWH98mA1hKHI/2n9gzArOhwZcw8L2NntTV1nxKkFEAssK5KBquP6TY/df0eB8h2CCQjT
         FsmkxgHRZjUgDutwUsgg7GxSWtyKWkqgyk4w+06aEYowHVG2yba2n/r88c3bAmYFlAKv
         WylA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=KDmaFm8v;
       spf=pass (google.com: domain of 3cllixgwkaf0i89n5pgid9mnbjjbg9.7jh@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3cLLiXgwKAF0I89N5PGID9MNBJJBG9.7JH@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id i11si387979vkk.2.2020.06.11.15.38.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Jun 2020 15:38:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3cllixgwkaf0i89n5pgid9mnbjjbg9.7jh@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id e192so8222319ybf.17
        for <clang-built-linux@googlegroups.com>; Thu, 11 Jun 2020 15:38:41 -0700 (PDT)
MIME-Version: 1.0
X-Received: by 2002:a25:d110:: with SMTP id i16mr15548576ybg.155.1591915120701;
 Thu, 11 Jun 2020 15:38:40 -0700 (PDT)
Message-ID: <00000000000048bfef05a7d69f21@google.com>
Date: Thu, 11 Jun 2020 22:38:40 +0000
Subject: 
From: ndesaulniers via Clang Built Linux <clang-built-linux@googlegroups.com>
To: patch-notifications@ellerman.id.au, christophe.leroy@c-s.fr, 
	segher@kernel.crashing.org, benh@kernel.crashing.org, paulus@samba.org, 
	npiggin@gmail.com, linuxppc-dev@lists.ozlabs.org, 
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"; format=flowed; delsp=yes
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=KDmaFm8v;       spf=pass
 (google.com: domain of 3cllixgwkaf0i89n5pgid9mnbjjbg9.7jh@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3cLLiXgwKAF0I89N5PGID9MNBJJBG9.7JH@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: <ndesaulniers@google.com>
Reply-To: <ndesaulniers@google.com>
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

Date: Thu, 11 Jun 2020 15:38:38 -0700
From: Nick Desaulniers <ndesaulniers@google.com>
To: Michael Ellerman <patch-notifications@ellerman.id.au>,
	christophe.leroy@c-s.fr, segher@kernel.crashing.org
Cc: Christophe Leroy <christophe.leroy@c-s.fr>,
	Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Paul Mackerras <paulus@samba.org>, npiggin@gmail.com,
	segher@kernel.crashing.org, linuxppc-dev@lists.ozlabs.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH v4 1/2] powerpc/uaccess: Implement unsafe_put_user()
  using 'asm goto'
Message-ID: <20200611223838.GA60089@google.com>
References:  
<23e680624680a9a5405f4b88740d2596d4b17c26.1587143308.git.christophe.leroy@c-s.fr>
  <49YBKY13Szz9sT4@ozlabs.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <49YBKY13Szz9sT4@ozlabs.org>

On Fri, May 29, 2020 at 02:24:16PM +1000, Michael Ellerman wrote:
> On Fri, 2020-04-17 at 17:08:51 UTC, Christophe Leroy wrote:
> > unsafe_put_user() is designed to take benefit of 'asm goto'.
> >
> > Instead of using the standard __put_user() approach and branch
> > based on the returned error, use 'asm goto' and make the
> > exception code branch directly to the error label. There is
> > no code anymore in the fixup section.
> >
> > This change significantly simplifies functions using
> > unsafe_put_user()
> ...
> >
> > Signed-off-by: Christophe Leroy <christophe.leroy@c-s.fr>
> > Reviewed-by: Segher Boessenkool <segher@kernel.crashing.org>

> Applied to powerpc topic/uaccess-ppc, thanks.

> https://git.kernel.org/powerpc/c/334710b1496af8a0960e70121f850e209c20958f

> cheers

Hello!  It seems this patch broke our ppc32 builds, and we had to
disable them [0]. :(

 From what I can tell, though Michael mentioned this was merged on May
29, but our CI of -next was green for ppc32 until June 4, then mainline
went red June 6.  So this patch only got 2 days of soak time before the
merge window opened.

A general issue with the -next workflow seems to be that patches get
different amounts of soak time.  For higher risk patches like this one,
can I please ask that they be help back a release if close to the merge
window?

Segher, Cristophe, I suspect Clang is missing support for the %L and %U
output templates [1]. I've implemented support for some of these before
in Clang via the documentation at [2], but these seem to be machine
specific? Can you please point me to documentation/unit tests/source for
these so that I can figure out what they should be doing, and look into
implementing them in Clang?

(Apologies for the tone off this email; I had typed up a nice fuller
report with links, but it seemed that mutt wrote out an empty postponed
file, and I kind of just want to put my laptop in the garbage right now.
I suspect our internal SMTP tool will also mess up some headers, but
lets see (Also, too lazy+angry right now to solve).)

[0] https://github.com/ClangBuiltLinux/continuous-integration/pull/279
[1] https://bugs.llvm.org/show_bug.cgi?id=46186
[2]  
https://gcc.gnu.org/onlinedocs/gccint/Output-Template.html#Output-Template

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/00000000000048bfef05a7d69f21%40google.com.
