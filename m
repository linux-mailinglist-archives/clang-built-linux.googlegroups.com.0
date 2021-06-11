Return-Path: <clang-built-linux+bncBD4NPLXYE4IPDLMOQYDBUBGVBZYFG@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x238.google.com (mail-lj1-x238.google.com [IPv6:2a00:1450:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id 155C53A474D
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Jun 2021 19:01:40 +0200 (CEST)
Received: by mail-lj1-x238.google.com with SMTP id y5-20020a2e9d450000b02900f6299549d1sf3003318ljj.22
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Jun 2021 10:01:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623430899; cv=pass;
        d=google.com; s=arc-20160816;
        b=Jcv5iMhREXllTQv4cK6MYsBVyDGAsZSLihcDrRu6VTN8qgL2kLMtJJkusGhPHhIEOC
         7+z2wJ8cMB6Mx5A11umJOF+3SCYLpBwQZ6rdaX84SlY8RNbV2iPDv2fCYPiceol5I4eG
         e/iLRNTKACu02plYr5Fr6YyHCMQGmIL9N03GtIvm79AqPvHwBEw3zD+Jdj1TGq34bdtw
         Pq9Mx9d0ciUrddopDUQHBkSNMKVF9fVi2F7ECe7kxT/fQGnWSqbTwQM20/mEjEJVlkwU
         PlIbn2hSOHKLvPzKSELBbZojcPuc/0uZMbe771j1FL+ZziDQb+X55zGOHnz/EUnKebmv
         n2HA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=ZoXJCvppQjnBOZ72PwKNqyG5uiuGm4LcvhS55RHJZSY=;
        b=r/GTK1z0DY8ZBmAVimod4JpYIpUa/rLEUSjf7y14t/k9LYoB8nab/fZLAyvt+yBgcT
         xsdhWr3YitQ9ho8TL9rlu8ZDgWZPDh5Yj7CTjWlXQdW4ZpDoVkGAjDo8XymtO8+Uj3CI
         vZ2/+i6f05qByTWkE/PgDXbyT8gIkBBAlF7lZw/NteAPvy+SfQRsY8XxDA+3sydnQJX9
         eurp9zgI13ZeNBmgiVuOWs1JwGGryXbQwO8ib6GgHvofjwOJF52SefS1GxVNuiwWgrQT
         2vhYQ+u8NVUS5RZtWyJCzzzKOs2tuvHk8xRqB3Y0nosj1Qn4eST2sRn9tGPR4Bz7MyXo
         NoWw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@paul-moore-com.20150623.gappssmtp.com header.s=20150623 header.b=fNCIy4gc;
       spf=neutral (google.com: 2a00:1450:4864:20::636 is neither permitted nor denied by best guess record for domain of paul@paul-moore.com) smtp.mailfrom=paul@paul-moore.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZoXJCvppQjnBOZ72PwKNqyG5uiuGm4LcvhS55RHJZSY=;
        b=HcpIFaRHnzdWNHNa7/bhj0o6DAdPQeKzdJYl+KqlN/9kkgpsF2/WH0P7lVYl0T7COF
         64yjOVDEMpXJB7ouSaErnaPk7xTu4r8+F8EW+4XAQxHsMWwfHXZUy+YEyUusFIinTBVl
         j37JCC/B35VHlOOTjaxg5vup6jasROBgaHjduFJ8B/r5AYp6inx7Ux5jMtFAXajhvDBG
         OjI+x8Mw3sD8RwD0FP1KhOG7HXssgLdL7bZhWqhMYWv/o92RcD59kzq8MRDOk2kXp3y6
         tkb0Rjcsnl+FaH9H/E+wba7FdMi0bGkGIoYKcoBFWymkpYip9vGj24O4YPYz+oZBrvJ7
         3wNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZoXJCvppQjnBOZ72PwKNqyG5uiuGm4LcvhS55RHJZSY=;
        b=Y6hB9LAuvVcFuPpR0XVDZAh2f9FHr93eW4drz87K5WnVg5funhlMk259217dEk5yGg
         chSNlIhfd2jlUZwevDVs6UHFMD970V9g3F9lXRyttDdwwATZL9/uMWXLw/gS9tywERBe
         XDE8jLyQ7wjlaq4Jm/jiLvrTEB1hpfgFQN/kFq+VXQ2cxzfAAxRir8uJYLgPe35SeF5C
         5JRCKRAkymmrGrIvm8W4+ZWs+E9GGiEWetq65OBA7ZSTBS4Ujvl9xSK4Rdjz3feQcyh3
         thz3jihPYRcPl8oa3u1nJ4lDvOL271/IxcSMXSXoM8o2zeJOeHZ+BwibG2ZGp+F5zh5S
         NI5Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530hQLaSYDgN5hDA+T4D1NtUIbAi2bp3ckv8egvk8zK2ZYk3RTR+
	+msHyWgjbyV21cYJ29N2wtg=
X-Google-Smtp-Source: ABdhPJxzOGMEgG8gXdUW1Rhp2Hvj/usp0PaIZPo+XWQQHXwp3Jt/vHMkaqwmqwp4QwGqDHH77ucT+A==
X-Received: by 2002:ac2:43b5:: with SMTP id t21mr3132731lfl.247.1623430897960;
        Fri, 11 Jun 2021 10:01:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:2041:: with SMTP id t1ls1162794ljo.5.gmail; Fri, 11
 Jun 2021 10:01:36 -0700 (PDT)
X-Received: by 2002:a2e:894e:: with SMTP id b14mr3932710ljk.112.1623430896521;
        Fri, 11 Jun 2021 10:01:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623430896; cv=none;
        d=google.com; s=arc-20160816;
        b=cvwzOCl1XgWQtFlMJGxe/OotIp6Fk8OrMWzThyQRKxWC9TmVNg61I+iG/bfeuzsxDe
         9Nf6yOwINbq1AmNRxWZg/vX4sfyJIFK/SsqszMk+ApqwWlMmJHnawIfH+O/QaVCNePBY
         70HlL7DmdiXydvIjq0O2z7Iwc0bZyH7gsCaw2tfO0xrfKK/9knt116Wj8XNL6u/s3D+2
         8lU+udf+caUjhmBjH0ujFC3Ra/D/q22QFmxAtqDYgOJpPnHSjm54wP3QdeZPdZY4VJFN
         KBOk3mD2NrGMUkHUZ4pi+Keu1z+/kcu1R7vBgNWX78sAx3r3at5qRGL1Lz8wyiS+A2DG
         PC/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=rF3RW+vRTBdayrkEmU143aymaoHBMTIDi13FY84zy6k=;
        b=R50zXP2J9jNi+ZNv3O5soOhbrpBWNiuNMMZ72vxR5r2EweSpd8XOGYNOoLhVJQ0mju
         kKW2NBXB79oKq3YuPwsbseK12YXVMxjuoDGAxcOOZlnxr3KPUh+r3EfSxzG5FJxyWiiT
         +PTk/cfZGYy8KtkfRz+scnYCL7w70uC2Ft3NXAOCVqW/iErgONccm9kgCMuAvdp28CBI
         H/TDHYtPG7JxQHsd+91dnhq/M5QeyrEBsNdf1nrglIIHNW/dPxWybG5Bj/lRYMF4cXGK
         3HGn6GULdisY/xdcZE+GEG2w0NYjG1sb2XzNkWDAqczq5lBgqagwAZy4EBA18HKWuEKw
         hVNQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@paul-moore-com.20150623.gappssmtp.com header.s=20150623 header.b=fNCIy4gc;
       spf=neutral (google.com: 2a00:1450:4864:20::636 is neither permitted nor denied by best guess record for domain of paul@paul-moore.com) smtp.mailfrom=paul@paul-moore.com
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com. [2a00:1450:4864:20::636])
        by gmr-mx.google.com with ESMTPS id r78si343013lff.6.2021.06.11.10.01.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Jun 2021 10:01:36 -0700 (PDT)
Received-SPF: neutral (google.com: 2a00:1450:4864:20::636 is neither permitted nor denied by best guess record for domain of paul@paul-moore.com) client-ip=2a00:1450:4864:20::636;
Received: by mail-ej1-x636.google.com with SMTP id a11so5580027ejf.3
        for <clang-built-linux@googlegroups.com>; Fri, 11 Jun 2021 10:01:36 -0700 (PDT)
X-Received: by 2002:a17:907:3d8e:: with SMTP id he14mr4663408ejc.178.1623430895727;
 Fri, 11 Jun 2021 10:01:35 -0700 (PDT)
MIME-Version: 1.0
References: <1623406567-51427-1-git-send-email-yang.lee@linux.alibaba.com>
In-Reply-To: <1623406567-51427-1-git-send-email-yang.lee@linux.alibaba.com>
From: Paul Moore <paul@paul-moore.com>
Date: Fri, 11 Jun 2021 13:01:24 -0400
Message-ID: <CAHC9VhT2mmgL8Vnrb35BEJkq+Wo2fT3Fc-HD51PwMyNGmsAWJQ@mail.gmail.com>
Subject: Re: [PATCH -next v2] selinux: Fix kernel-doc
To: Yang Li <yang.lee@linux.alibaba.com>
Cc: Stephen Smalley <stephen.smalley.work@gmail.com>, Eric Paris <eparis@parisplace.org>, 
	nathan@kernel.org, ndesaulniers@google.com, selinux@vger.kernel.org, 
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: paul@paul-moore.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@paul-moore-com.20150623.gappssmtp.com header.s=20150623
 header.b=fNCIy4gc;       spf=neutral (google.com: 2a00:1450:4864:20::636 is
 neither permitted nor denied by best guess record for domain of
 paul@paul-moore.com) smtp.mailfrom=paul@paul-moore.com
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

On Fri, Jun 11, 2021 at 6:16 AM Yang Li <yang.lee@linux.alibaba.com> wrote:
>
> Fix function name and add comment for parameter state in ss/services.c
> kernel-doc to remove some warnings found by running make W=1 LLVM=1.
>
> Reported-by: Abaci Robot <abaci@linux.alibaba.com>
> Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>
> ---
>
> Change in v2
> --Add comment for parameter state
>
>  security/selinux/ss/services.c | 23 ++++++++++++++++++++++-
>  1 file changed, 22 insertions(+), 1 deletion(-)

Merged into selinux/next - thanks!

-- 
paul moore
www.paul-moore.com

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHC9VhT2mmgL8Vnrb35BEJkq%2BWo2fT3Fc-HD51PwMyNGmsAWJQ%40mail.gmail.com.
