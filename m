Return-Path: <clang-built-linux+bncBDYJPJO25UGBBQVL6HYQKGQEMMGAGDQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3c.google.com (mail-vk1-xa3c.google.com [IPv6:2607:f8b0:4864:20::a3c])
	by mail.lfdr.de (Postfix) with ESMTPS id BF546154AC8
	for <lists+clang-built-linux@lfdr.de>; Thu,  6 Feb 2020 19:06:59 +0100 (CET)
Received: by mail-vk1-xa3c.google.com with SMTP id y28sf2234136vkl.23
        for <lists+clang-built-linux@lfdr.de>; Thu, 06 Feb 2020 10:06:59 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581012418; cv=pass;
        d=google.com; s=arc-20160816;
        b=phajj+VqWfWoalf8Q6HBQqaTA8wcOgBP1JzzZk6bNijtEQQSvKkTHoyqhM0QtvSOpS
         csmjDnhgSbsJq/oX7iopEZEFKkxZX6tYxf99evodjOtxDHrxAgWL/JD62CCDX+YvZ148
         Lb2E0yCMo/Gbp/UVKujdvV6iWdG2J3BeKwmQSNcd2cg+TW018Jh0YoyAZmTttUD6iKf6
         en4OwkxOGKSEnHgJ/42rjfB2wT2J4NujE0SXnMI7k5zyY2VM72Zuf5PXI3/75GKq6JON
         hGWiPk5EIUCy+X7Qg51QSzNxPCRLjVyshEPJoleYxlfi/USGnQF8JT8vMfVYUjxbBsV7
         5XMA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:mime-version:dkim-signature;
        bh=oxdNzm0z8b0+XfNiayRZGl0mNEF+SIVRfKs64eeWGnE=;
        b=zGYvN5OFbqbu6fnkHx9IOTJ8TBy3OZ+RmaGAJHRCXA71FWgb3NzX6K1IQ+vD+5BqRo
         KUt3mWTm24Fpaj54r1Q155JZDxuRi44R9XiC+kHDtk5hcK4Xniw5U/3XsDuSh/uCFVx0
         /uwkbb6rLQ2rY++3v5kH2DYEdTDxaAXVgY0uPycvLmaB/qwJuEi5YwnrSGf50FGQvUOy
         P/YWZuieLgeyHF41pxg66wEjY//dyWJ3SqJ7OLpmEOK2TjOYmkQ9SHMni2TgZcm2gXtg
         A3l963BCQg/lmqO5LjHmCX06Z0LqN71Jd+44fKbXJ7GifAkCc2V0qJfpnC3vEBwLblVV
         /h4A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ip35n4mW;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52f as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=oxdNzm0z8b0+XfNiayRZGl0mNEF+SIVRfKs64eeWGnE=;
        b=b3Lqdm+4iWfIbdQWW0QvDoGU3yuZ9fYT6nc6IQ2HcbdMacxG3qgY858++ipu6QVP/2
         HhNbSTsw7+uYu+1NBR+iPxTh1HyGoWT6E/cfj2x8rH9cyHH/1Ql3rI1l3Acm569S7FXE
         p/U92vym176RVydV2eMTGrw1UkIaGdTl5jkDT7LG8Nid/hAITvKo1mNkX0usVlK6qEhB
         yEDc9HNUaVHF30j8OpitnN3oVlFVUQ6Yf07dG0GqWr9yjLN22HFZSRXEHaLyMs0fZLwC
         FLB8tw/hOX+ewTy8cR7CQLiCSFWcjsPhAhrOD/qJuFt1aA4ZE7H3y9WTaT/+/MCnPolC
         7NmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=oxdNzm0z8b0+XfNiayRZGl0mNEF+SIVRfKs64eeWGnE=;
        b=tRnFrz/DYLha5bkjLHKgmstXChUN9p9f1cN0aHfX+AQcqdsKZ338EsPJfeWD9gvIWw
         oT5pV3q7E7aZlO+9vvYwcVvmWMM7SRBvXn75D8h1NHjJ5Eb5tHFy+8dCNUDQbBoIojjV
         Zr2VBd2iJzEmOUr7kKy449yumfDB8kj1vfn1c5mSRumGAzLkpNVDh3D56T67bjfRXjVT
         8RQ3YpuMieFBtv0ba4MW5AnNI2I/978kEmE/7zOD5Y9SH8Kpx+6npSfJBh7Buszrltp+
         /2IwIX+ti9T1DHL3Y8NR/WZPm0oRYjsrICWYgFYR26RmaU4UKRes+YcJViR/LJcM/P8Y
         cO2w==
X-Gm-Message-State: APjAAAUEoFWwnI/Rt23kyAetDd+XYTMIygDJ/XAYpDIpvp7yOwSLIiwl
	HrhS/U47LUkaTX7ZbFZEOh8=
X-Google-Smtp-Source: APXvYqyDu8jN81Nf76Z8uEH3ybMVe9RliMqYft0UUaYwALIa1xYUuCneXh47yfzMZZvb6pFMGShamA==
X-Received: by 2002:a67:f49a:: with SMTP id o26mr2455203vsn.124.1581012418755;
        Thu, 06 Feb 2020 10:06:58 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:60c4:: with SMTP id u187ls993199vsb.5.gmail; Thu, 06 Feb
 2020 10:06:58 -0800 (PST)
X-Received: by 2002:a67:f641:: with SMTP id u1mr2539763vso.86.1581012418321;
        Thu, 06 Feb 2020 10:06:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581012418; cv=none;
        d=google.com; s=arc-20160816;
        b=Uc+jr4CWYgnwYNg+kioLcAocyROr9aPBRBWuRTqdxlpqZSGzKCVzrqMP+xA0nMDnuR
         N4vabUIAY1LW0b5/sk55p4FNJQN8xIjkOBA9BYU9izU++0LD9c3jzGMts7pHAzXHXX5Q
         CVcr19J46hOASvh567PpUWn6zAWDOmAIhSxUBzDPK6dPFfeMiX+Pagp0MtSzAn56vdSL
         milUXqvJjB1nDzjJnYZ4EZgDyqDBJbVHk/d371WRIoZT0NuehGejOzEt+7saKGA67oOR
         xjCR874weupIm8fg+oyKk7u9PbglWIt7amkS5Xk+fO98jLISXb5lr7Nw7PoTOUKAvkC6
         JVWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=WTeiO3lSeqMfKvHWexiIN8WCklDlzl/mkUt3KbtjUhc=;
        b=l1MUMoTsT9f2WYzY6sgg41ZZ9O/ouxD/nDt5sB7Yiyq596zavDhgZFDek9leoMuUai
         VNWLve9aBwDYxM3XIdAry+4VyJmgq3jh3gBtU4jwtJoj3G+ApOtoUwp2NiZyBi2uKyiB
         UtW3XjN82Q3ZBPWxjCdRa89CBTp2EhD/MoN9j+HE5oaz4WoQ2kVuX1wLFX2Mr6U41MkQ
         e8YPxsyqIXdzmZ3zJSVIxbJpucW31CstGZGzjS/FCOC4H6vaPh+b2JsPE5lsW78x6BUg
         AMwvaMOy4EThupKb/nmFDVnhd1h+Yo4EIvivHdYJ9LwUOI0tPq0Ks31ohIidqX5Se/xy
         j+CQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ip35n4mW;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52f as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x52f.google.com (mail-pg1-x52f.google.com. [2607:f8b0:4864:20::52f])
        by gmr-mx.google.com with ESMTPS id s5si4355vka.2.2020.02.06.10.06.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Feb 2020 10:06:58 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52f as permitted sender) client-ip=2607:f8b0:4864:20::52f;
Received: by mail-pg1-x52f.google.com with SMTP id g3so3117071pgs.11
        for <clang-built-linux@googlegroups.com>; Thu, 06 Feb 2020 10:06:58 -0800 (PST)
X-Received: by 2002:a63:d249:: with SMTP id t9mr5152632pgi.263.1581012416878;
 Thu, 06 Feb 2020 10:06:56 -0800 (PST)
MIME-Version: 1.0
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 6 Feb 2020 18:06:45 +0000
Message-ID: <CAKwvOdkce7dotTyVQcpcqH44cxLWPHgwqTXz0Zv5nCmmnkbeiQ@mail.gmail.com>
Subject: ZRH meetup info
To: clang-built-linux <clang-built-linux@googlegroups.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Arnd Bergmann <arnd@arndb.de>, 
	Behan Webster <behanw@converseincode.com>, Nathan Huckleberry <nhuck15@gmail.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Dmitry Golovin <dima@golovin.in>, 
	Peter Smith <Peter.Smith@arm.com>, Sedat Dilek <sedat.dilek@gmail.com>, 
	Stefan Agner <stefan@agner.ch>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ip35n4mW;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52f
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

Hey everyone, if you're staying at ENGIMATT, let's try to meet
tomorrow for breakfast (which should be included in the hotel) at
8:30.

The event starts at 10am.  It's a 12 minute walk from the hotel.
https://www.google.com/maps/dir/47.3578404,8.5250286/Google,+Brandschenkestrasse+110,+8002+Z%C3%BCrich,+Switzerland/@47.3616809,8.5212858,16z/data=!3m1!4b1!4m10!4m9!1m1!4e1!1m5!1m1!1s0x479009f6552b0ad5:0x6ce64332aeeb16ba!2m2!1d8.5248391!2d47.3655464!3e2

A couple of us are meeting in the hotel lobby tonight at 19:30 to go
grab food and beers.  If you can't make it, sorry for the short notice
and we'll catch up with you tomorrow.  If you run into any issues,
please email me or Bill Wendling <morbo@google.com>.  For general
questions, you can respond to this thread.

See you soon!
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkce7dotTyVQcpcqH44cxLWPHgwqTXz0Zv5nCmmnkbeiQ%40mail.gmail.com.
