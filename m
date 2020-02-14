Return-Path: <clang-built-linux+bncBCLMHO6ARMORBVESTLZAKGQER2XNKNI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83c.google.com (mail-qt1-x83c.google.com [IPv6:2607:f8b0:4864:20::83c])
	by mail.lfdr.de (Postfix) with ESMTPS id 122FC15D6D7
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 12:49:42 +0100 (CET)
Received: by mail-qt1-x83c.google.com with SMTP id z25sf5438790qto.8
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 03:49:42 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581680981; cv=pass;
        d=google.com; s=arc-20160816;
        b=uZTf8rhoZcWgz34SRpA/fRw0RdK4C6r/PSLFrj9AINj+0rV9cSKN/nfCIFS6ZFMEGG
         mn9UtECns7Fyh8GbxARfVvEDBrXKogjqZtkOGsdDC83rPjFnoiReDzIx/l6GIeFEr7FZ
         4CPZpdCF1twWMpBFQ5B5yNwS6HntMGw7Z4XTqxzE887OvgX6LxI2+IfBreCQ9lI1uJTX
         Y8eue1N+IviCS+uWTk99k8llzkd0M5B4+Sj1TtXIamox8Sv0jJ6qmYHrbAtK9js+dmCn
         jf//97M6bIBMtqbU6bZuXfs992Jo8ZSgj7OdBojWKKZoLTxiomwl8GsnkiMkTp0P/FfT
         XHMw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:message-id:date:references:organization:in-reply-to
         :subject:cc:to:from:sender:dkim-signature;
        bh=GcXtN2MzYSnbh2Iw4wHTRGF6oAou2wfBaqVWRln1Cy0=;
        b=lUplD7AItGxfXp5OHkcxwZ0hBFz/JAblxEFGBQym7jhsm6e849kLacYQ4YEb0m6ysY
         IID53YiPn+/FIydR3M3YPn9QHxEIGAkKohIgEKNl8ec0VjKQqZDj5xjlUqf52ZMzMuzy
         olsxOzS3v5qes/zQSc1WubcjN0O2lIcdixq2zuuG1fSqoAIS7OTXLihNy4uNdQKuPBCv
         /wDpZ9gfHruOho0z0msbWbtaIwExNsO39g8sBhbkEeNnjPxZm/+z2yD4W3L+M6fyvwtT
         9aVkmHrE7i99s4+EfClyOSVuztj9uoRulClN8KRJqBykybVdIJrq8LLY1GKUtx8OiEPo
         bTyA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of jani.nikula@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=jani.nikula@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:organization:references:date
         :message-id:mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=GcXtN2MzYSnbh2Iw4wHTRGF6oAou2wfBaqVWRln1Cy0=;
        b=HaxNsrVbCp0Lmh0caSKTWhvpM3oB/yGvVytuqLVlvgA+BY9RwLcd0juZJTJpbb055a
         FLoiJbs4HdA2fepCJD+Ys2iYUTte8ktXjtBqburTC7MWoyEBCDWQdF6PUEbqHZATAnS/
         7sighjgnbLH/Xob6Ajoi2abDviVR0IFVm7bzFLbjTfNIgv17iVgsRmYitofMFreW6AE+
         lc7rRsEnUFoIqli+6I8bCJ58XGt4wdmq9Eai6OawCR61oMFrkRdaIxpV8N6ehCZyNud7
         09IfCQjMBJDhltDkWv3YbUBabWJQd0HqKANku1T5yXdPW/d/xVpWVuCUrBH8gjnCmuOl
         40Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to
         :organization:references:date:message-id:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GcXtN2MzYSnbh2Iw4wHTRGF6oAou2wfBaqVWRln1Cy0=;
        b=Rt9samPz+ejZbCQDvX2g8nvqibzLf5PLb43TyVzRFhNLQAnJl9mQ98YtEfd4asuRuQ
         UYuO/+fo81D9C8rvNfJ0+cAgTceysYTlcwZxnWp74X7NRlHU74/AaHLrzujYyodq7DBg
         QHQpnyDV76YO1JUo2ZTA/+ZHbKpmAtOYrz8U9ULxFcCOnwDLcleId7Ykx+WtmuZK9h3+
         plWCJ+CjJo4f7dJexRHdf5wYpgpMNicN2sWVbftFsZ5cLu76/cJQxuFWyfr+qGM5sew/
         tJSN7VQy9UiKQ6YkMTVOWmJQxw/EU2le+IfSX9rJ8b8+qToBoDLlBFPI6NyxIecb9EQ8
         fE6w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXdMY1qPGziewJJhxL0U/JTMINiKWaagchQoQT30RKUwIa47LxT
	B1RUUTXzHnMaTGdPDrTpwOc=
X-Google-Smtp-Source: APXvYqwGQmDku70PUsAbYZ1xTonrKamFcCOAVolM2HiDUiaeHa2nlRQrdiQiLPujplXMlm9vmzcbeQ==
X-Received: by 2002:aed:3e0e:: with SMTP id l14mr2154233qtf.163.1581680981095;
        Fri, 14 Feb 2020 03:49:41 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:9c7:: with SMTP id y7ls827795qky.6.gmail; Fri, 14
 Feb 2020 03:49:40 -0800 (PST)
X-Received: by 2002:ae9:e8c4:: with SMTP id a187mr2038857qkg.423.1581680980702;
        Fri, 14 Feb 2020 03:49:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581680980; cv=none;
        d=google.com; s=arc-20160816;
        b=A+fc9uovNVlfHIRACWUx254mmm+3UsfuHz0MnA9l/yWx4J4eiEqozg8DrbEH+hAAAR
         WyTrycnc3ndAUDENG3Wlp91x5rs6gcDVMvs+s1aVv70uyWjcaA+4VtBAwLv5LwbVWkpS
         NEM62vXWEIcJhhgA1uLxj4TlFg3fV5UVOmKhf/XroTsW+9Crr9Bo4kf3Yp5kTl3SpvSs
         VPsFa5NwAB27nUIQox96f6PK0x0MhqiFvLsbrobdVGXyPi7uW1gTXX/6VJC0OLKTXabg
         +OlNgq/2PK47HZ+o3wRn5Lv7ZRolDht4zYJV0Fpzz7X3MjxnU3JxIsSrg4ZSVfmg90vy
         D/8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:references
         :organization:in-reply-to:subject:cc:to:from;
        bh=br8HQybxDw/sgmSkdnkZIATNHP/BYNhjQO0mNrDJzJA=;
        b=DPkpckpXfl/LsMSG8M34r5D/ju9+ti7v/UF44zipB9EoGiZmrh7IWUGk4KYpYIIS4e
         wV3zSJ+J4bwYEdYq7xMHnZd73NZi/QVS/q1Eqj6F89msomGXb59iyWxrEzoZf8RdL9a7
         pKfQZrlUIB3M/uvyuo1giF8Xa/NUpWonkcyzhy1QmMUtGc7F471CB0mPIJGyUY2rYG0E
         +h2b3ExoOuOq8Uq5p7CkTrFRYU4cfZbUNkq6hQMTTmn77LKtKXS8nezg5ZJUe96Eb6Is
         amRa8cuoVZrhThgGF9CGh3ZMIbpghPTDgB58q9ETDLGV7P8UcryiSJ/cP18Z+4k+vpWW
         JrFA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of jani.nikula@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=jani.nikula@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga12.intel.com (mga12.intel.com. [192.55.52.136])
        by gmr-mx.google.com with ESMTPS id s25si282339qtc.0.2020.02.14.03.49.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 Feb 2020 03:49:40 -0800 (PST)
Received-SPF: pass (google.com: domain of jani.nikula@intel.com designates 192.55.52.136 as permitted sender) client-ip=192.55.52.136;
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 14 Feb 2020 03:49:38 -0800
X-IronPort-AV: E=Sophos;i="5.70,440,1574150400"; 
   d="scan'208";a="227578838"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
  by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 14 Feb 2020 03:49:34 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Nathan Chancellor <natechancellor@gmail.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com, Nathan
 Chancellor <natechancellor@gmail.com>, Michel =?utf-8?Q?D=C3=A4nzer?=
 <michel@daenzer.net>
Subject: Re: [PATCH] drm/i915: Cast remain to unsigned long in eb_relocate_vma
In-Reply-To: <158166913989.4660.10674824117292988120@skylake-alporthouse-com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200214054706.33870-1-natechancellor@gmail.com> <87v9o965gg.fsf@intel.com> <158166913989.4660.10674824117292988120@skylake-alporthouse-com>
Date: Fri, 14 Feb 2020 13:49:31 +0200
Message-ID: <87o8u1wfqs.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: jani.nikula@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of jani.nikula@intel.com designates 192.55.52.136 as
 permitted sender) smtp.mailfrom=jani.nikula@intel.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=intel.com
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

On Fri, 14 Feb 2020, Chris Wilson <chris@chris-wilson.co.uk> wrote:
> Quoting Jani Nikula (2020-02-14 06:36:15)
>> On Thu, 13 Feb 2020, Nathan Chancellor <natechancellor@gmail.com> wrote:
>> > A recent commit in clang added -Wtautological-compare to -Wall, which =
is
>> > enabled for i915 after -Wtautological-compare is disabled for the rest
>> > of the kernel so we see the following warning on x86_64:
>> >
>> >  ../drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1433:22: warning:
>> >  result of comparison of constant 576460752303423487 with expression o=
f
>> >  type 'unsigned int' is always false
>> >  [-Wtautological-constant-out-of-range-compare]
>> >          if (unlikely(remain > N_RELOC(ULONG_MAX)))
>> >             ~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~
>> >  ../include/linux/compiler.h:78:42: note: expanded from macro 'unlikel=
y'
>> >  # define unlikely(x)    __builtin_expect(!!(x), 0)
>> >                                             ^
>> >  1 warning generated.
>> >
>> > It is not wrong in the case where ULONG_MAX > UINT_MAX but it does not
>> > account for the case where this file is built for 32-bit x86, where
>> > ULONG_MAX =3D=3D UINT_MAX and this check is still relevant.
>> >
>> > Cast remain to unsigned long, which keeps the generated code the same
>> > (verified with clang-11 on x86_64 and GCC 9.2.0 on x86 and x86_64) and
>> > the warning is silenced so we can catch more potential issues in the
>> > future.
>> >
>> > Link: https://github.com/ClangBuiltLinux/linux/issues/778
>> > Suggested-by: Michel D=C3=A4nzer <michel@daenzer.net>
>> > Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
>>=20
>> Works for me as a workaround,
>
> But the whole point was that the compiler could see that it was
> impossible and not emit the code. Doesn't this break that?

It seems that goal and the warning are fundamentally incompatible.

Back to the original patch?

BR,
Jani.


--=20
Jani Nikula, Intel Open Source Graphics Center

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/87o8u1wfqs.fsf%40intel.com.
