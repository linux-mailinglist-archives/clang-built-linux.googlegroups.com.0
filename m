Return-Path: <clang-built-linux+bncBC7JPD5NQEBBBVHYRH3QKGQEAONPUDY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3e.google.com (mail-yb1-xb3e.google.com [IPv6:2607:f8b0:4864:20::b3e])
	by mail.lfdr.de (Postfix) with ESMTPS id AC1911F6D97
	for <lists+clang-built-linux@lfdr.de>; Thu, 11 Jun 2020 20:47:49 +0200 (CEST)
Received: by mail-yb1-xb3e.google.com with SMTP id s90sf7574557ybi.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 11 Jun 2020 11:47:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591901268; cv=pass;
        d=google.com; s=arc-20160816;
        b=ebL1bbgHE5Yi7bmubsbb19dyITI+F+WnNdF1OV9S5yP5F1e93qf0i8/mU0EO1GhX7N
         SDu57BzfZRmNc+YkhCMDSATk93HjaTxbpA+gfBq9NBMtmmiLJlD1V1vYxTM0nwLK8VXV
         MhWrcgjZGprPiReyYtx5PlMHrnquSpaSwsLBTuaouE6A4nfZv15bVcYkMscZbU8WdW0j
         U+HRQfKFYYC7WtNfqJLr6ktRLtSDHf338n9RHpPLPT3DqzjWF7RoOJ53drnWfje8oF9F
         NjDR1YmlteWTt7EewTlMmQRU61XNHEURBMTW1e9J+6mTKceu7wCpx9IpNcJMzRgzq58J
         rDoQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:subject:message-id:date
         :from:mime-version:dkim-signature;
        bh=3Qi29Tf1+AYAqJYnmtRvAounE/TZod0KP9dQ+8s6bRA=;
        b=jn+GMaFfKitnMbxF75pC2dAiFQZglFnMs7RjOrYlmCRbgpfBck8xpfArAhWvHKhTsb
         HiyYHoJDc9I6enFANwMDVWAmWNDef+CIO+bnOXixrvcjRf2j+qLIp/olui1jRmad7QwC
         9KvfZXBgKgLtdraIJEwwZO7dlYFeUjwZE9JSHYKxyplzcQXKczoGV/yM5ZZWYW+BCEE0
         lvMfJahDBKbv48DxDdNB7KQOh3EiqnRXPg8EpiclYV1avXQKfTtMc+ggjlYiZ2AQbsNu
         gMmDfk96ss/29nT7zUs9kKKWQN67PBSnAZb5WngDXVVm0ZWitufKfGXUngsqF7sq8pqX
         nDsg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=e4Hrd7aA;
       spf=pass (google.com: domain of nhuck@google.com designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=nhuck@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=3Qi29Tf1+AYAqJYnmtRvAounE/TZod0KP9dQ+8s6bRA=;
        b=FonMk/nrxBGIvP29Im1tSEC1UFHX00TmxJmh/RPiODRhRevA121Im8ooRTVtmaE9c+
         Oxe0i8h9pwKVg8lgmvS2AUyFWIUHIBTyE7PQxmc0kPpdzkbXNgW2pCJkgJ9qJqPMcgTZ
         ZSSGpFTPhaOyZEBO6K9vsQXal5OTvYyIYzrmjxUsrQduI8BqYeO/3ZDM369wPdlh+p3a
         2xvUNIiWenIahCfZ2bj7/Rjdy+i2TincHsY+BWo3iY83PR9gOLkJd/1Zx0OVUBaPWee/
         RYkNB3b3v+WmqiOUP7/ygTQPoEhc4XWBCxKpeu7Xu0qH3shd/rse6AE0rmLBjmN0u1v/
         YnsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3Qi29Tf1+AYAqJYnmtRvAounE/TZod0KP9dQ+8s6bRA=;
        b=RlRhhxxOCpkRWAgMUdhKfgM8Ce7+iD9V2arxdX4g3odDbhk0x3q6IDeOX9/OhuE6JA
         38/hljWRUNqWTkKh/AO1A1j6ryOFVhFfFk7UV183/oeQp24de5Vmc70KUdN7cCbZ1xMH
         kEgZU3OCzcADho4XOA4iV+BGz+7hE0JbQj3bQ2x9/+C8o9EUzVy1dqLhcZW/OJOdok6U
         XcOjXPRx02T0QMxKTUjZBJVXVqlj/D0HYKLaYvXR1P8zLrkDO8vOW9hsaPX22J/SBoCN
         ddFprn7cy4WYFb6N/PTmoj0eUqCClsbGOpF8qsjUA86682zgN9v4iyQ+b8H6DdBpZfG4
         yqyg==
X-Gm-Message-State: AOAM530unP6sPFY0VWcyjNI/8nbKI8A04sbb9wLV2Zjv+GtbBxqz7gkL
	yIKxvlds1Bj2yaGG7m+Rf8o=
X-Google-Smtp-Source: ABdhPJxm6GLp/TuT5WwudavLzk1/AkBNGMgsjwBIjfAmQsBBS/JvrnECor+0PtmffCpCXYcHIXLk6Q==
X-Received: by 2002:a25:6403:: with SMTP id y3mr16235463ybb.229.1591901268738;
        Thu, 11 Jun 2020 11:47:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:b18b:: with SMTP id h11ls1229083ybj.4.gmail; Thu, 11 Jun
 2020 11:47:48 -0700 (PDT)
X-Received: by 2002:a25:4f08:: with SMTP id d8mr17416526ybb.125.1591901268406;
        Thu, 11 Jun 2020 11:47:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591901268; cv=none;
        d=google.com; s=arc-20160816;
        b=RTs6k5zgelQWL74fEcYeU3qxT3/F1LuCZs3y47lIBnFGf5C9xZfsgbwAdXAIxrPQqa
         K0+4yuBLgu03bgNRGiBIpDclFxOsIBEVEgAEqwN2iAcdzKNWZtb2eRcZJgEf4wriqPOy
         odSSw3SGKpEsIzOi7v6M1BYc9PvTKbvPMOtnR57Otg1FmooWHZsy7Hj1ZCOCEy2q0IaU
         4EdiXvz1Se5hgtD7yJB76IfqHnbhyPdRjMmxd+WN8dnsPAzbUT4qXRSBR8X38oZkB3Gk
         nQUzjUAL+kua27tXwySNHidh1w523/CthlA3USmSj6tXrIeImE9aQuuLe3F3FIfQ+2F5
         jMFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=QZsPGCEWRHgbOuOwfLEFtngJoQoZvMTBDnmbiCRn3zg=;
        b=pRfxaBdE4Qdto5xw894jN2bS0GyiKYdmZwMTDBhCvKK8hNHzKQOD/iShNIDmQ4R70k
         GVRtdifNp0ZywcbUOLvP5gJ70vk8qG/Vy8wioSfRV0PncbTwjxPMy+wkNWyRB1lUe/0e
         bR5xGO7cg3NV4ubLTTowUZ6aLyuoDk4ej+Fl7DWsV5E5JUk6z0nXrrZKO7hduGfS8/1y
         0H61Ect4h/myhwhyMeqkrFj4eHEUd2m8a0lb1UyZraHwYIKgS4ylVvurOSbelShVqlbw
         KRFdPMvAQN/LPM81IYj49YeAvssvXxf+JL+LiT8NKN05Sog/rUX/tZvDi4JFGpwdSeHO
         FF/Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=e4Hrd7aA;
       spf=pass (google.com: domain of nhuck@google.com designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=nhuck@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x741.google.com (mail-qk1-x741.google.com. [2607:f8b0:4864:20::741])
        by gmr-mx.google.com with ESMTPS id n82si392781ybc.3.2020.06.11.11.47.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Jun 2020 11:47:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of nhuck@google.com designates 2607:f8b0:4864:20::741 as permitted sender) client-ip=2607:f8b0:4864:20::741;
Received: by mail-qk1-x741.google.com with SMTP id 205so6619154qkg.3
        for <clang-built-linux@googlegroups.com>; Thu, 11 Jun 2020 11:47:48 -0700 (PDT)
X-Received: by 2002:a37:ae41:: with SMTP id x62mr9823802qke.354.1591901267481;
 Thu, 11 Jun 2020 11:47:47 -0700 (PDT)
MIME-Version: 1.0
From: "'Nathan Huckleberry' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 11 Jun 2020 13:47:36 -0500
Message-ID: <CAJkfWY4K5mFv3ooHRf3-gTAyK9snLOfAeptU0hGTmOJ0XN3EGA@mail.gmail.com>
Subject: Enabling -Wformat
To: clang-built-linux <clang-built-linux@googlegroups.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, Nathan Chancellor <natechancellor@gmail.com>, arnd@arndb.de
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: nhuck@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=e4Hrd7aA;       spf=pass
 (google.com: domain of nhuck@google.com designates 2607:f8b0:4864:20::741 as
 permitted sender) smtp.mailfrom=nhuck@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nathan Huckleberry <nhuck@google.com>
Reply-To: Nathan Huckleberry <nhuck@google.com>
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

I've been looking back through the various bugs/patches filed towards
enabling -Wformat.

The outstanding issues in the kernel look to be cases where the format
is a smaller type
than the argument. These cases feel like they probably should have a warning and
Linus seems to agree here https://lkml.org/lkml/2019/4/11/639

As of now, gcc does not warn on this case for any level of -Wformat.
I've filed this
bug for gcc https://gcc.gnu.org/bugzilla/show_bug.cgi?id=95588

For clang, it looks like moving these warnings to -Wformat-pedantic would be
an acceptable solution https://bugs.llvm.org/show_bug.cgi?id=41467, but the
warnings feel valid enough that I'm not convinced they should be moved.

Either way, these issues should probably be cleaned up in the kernel.
There are ~200 warnings in ~70 files, but the fix for each warning
will likely be 1-2 characters.

Any help fixing the issues would be appreciated. It might
be nice to have a standard commit message for each patch.

https://github.com/ClangBuiltLinux/linux/issues/378

Thanks,
-Huck

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAJkfWY4K5mFv3ooHRf3-gTAyK9snLOfAeptU0hGTmOJ0XN3EGA%40mail.gmail.com.
