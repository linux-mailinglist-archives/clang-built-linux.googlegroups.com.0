Return-Path: <clang-built-linux+bncBDYJPJO25UGBB755RLZQKGQE27JSPTQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 6667C17C5E4
	for <lists+clang-built-linux@lfdr.de>; Fri,  6 Mar 2020 20:05:36 +0100 (CET)
Received: by mail-pf1-x43a.google.com with SMTP id y20sf2100333pfb.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 06 Mar 2020 11:05:36 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1583521535; cv=pass;
        d=google.com; s=arc-20160816;
        b=EVcn3osAC8/Zin3gkI1+SZa3Y5i/O7pJcAnTFg+Znjv9xkAlhxnmBYubkg+VYb6T5K
         EnNYUNYN93QKCmerruoLWiW796YyfUkuD+46nWZnXZmxsR+/OxF3e365rEOVIm25zwzX
         +ZAg/obsrunY0wEvE2TIYMRYq7Kx4cS2l3bXcBjYVmWF6et9cqe+LoERZgjE9h62VFXy
         gseBcI5A5gQlYvnNYX4eXPKYQ2ZPA9SUpiy44jpQ4kgnCuBGx1rTi/pYdzehfPnFiI0c
         1mDMCeTC73vH/35ARzkyR+7et66n8UdJnQNvM3jsLUfDS4yTuqMaina63/GvVsxlmxIP
         cT8Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:mime-version:dkim-signature;
        bh=i+S8uet8wXWO64MQHMovletPYjXYOC1sD1kpYxKPcp8=;
        b=MkGh6BKvfDAsFb7plHKtCdW/X+2Lm7hPw2KPrsnKph6BRObUyBRna5D2YEjI2v61TC
         wnXRH8guqTh6kQ7PZfefY37CdW7JXOCIm4vt02/jq0OjDkQvTKf9wg0QOKBaiZTsj/z7
         083Hb1LMrAETKINtBnPd3MZabSAurgOygfwUky8ekgSr21Q9QoRRHkg2StqzpQ+Fr5g8
         u4+kQbNLJxEYpiBnq7Ip5O+R8J3ydxiaNIrgc9TOWIuzfJn6Qutm9D+t/aZewtNoM/rY
         VQMU4XqPs9L3Kb7ltxyykOtvsD4D5MT/n6l7YBJMw9LnKuTlU21iIZ80HZm2bJ9jQAvN
         5jEw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=N3fchBtW;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::532 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=i+S8uet8wXWO64MQHMovletPYjXYOC1sD1kpYxKPcp8=;
        b=fjq7bh5ddafJKFA1mfJ2ofu7dddBSOwY2rVOdVDh8HX7lG+U7tKMEN+n5VaC3SSOL6
         DGGTIesKcMOfQoMLfohDN+Sfv9kO4b8PSmQt89wUj1ZhsG0x6wro9sWwu8PGAUsiaNPS
         dnjp9BsJbJJtBcExBwCS3h8THSzDCJAwR52KFXdT8CxJOliQQYHNMJMuNnN7trkNFtBH
         ciuZ+5x0/1uL6VvrbQXwjkVtfLEDHU2WBusZvvqQjx6kw7KZeH2RTbUFiGatwfk05ADA
         Y/ymxTx0rYLZGXvnwpMSNbUOqFzxlccqd3BLXEEbnsXftsOpHszt91fIVHEFkd9ZVJqw
         uANA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=i+S8uet8wXWO64MQHMovletPYjXYOC1sD1kpYxKPcp8=;
        b=GACl+PbK/64S+ARkqbyKwmKAxFnfVvNhc8uQhPcKL/0GfnVXLkwLsX8lV7kTWv8Iez
         H56xdlVdqP0AfxLCUvY7o/VuP1ur0APwJpFITGDv2U1IZRnzzqGc68pi6nOxwDOIz+a4
         wX4stqjZW1Tjgrw2lZGxseJV/K396mjGNGero56+4cS/CeDjamg8y2zzFaPj4h6oJ+SW
         +6bZeUtsWgxDbj5k4PX2nz9uTAbRYEbffACK5DEI0mzGTmkgpoyxV/6CUK1UJMbhH0zc
         6lHEp4ff5pnr3oY4AYVGu1KNyGIDNFwwd4URpa17yJT2ATWHZ4gCYY1Iv85h5OeuPdsR
         VVTg==
X-Gm-Message-State: ANhLgQ3/Cloh3ssY/noV9mWQ6UnBQSDWQu/luM6m7QcFnIu+OEATgWhd
	tPDnOK0CZhKRpG3A98G8/88=
X-Google-Smtp-Source: ADFU+vswibanDmUoubm6v3tarTiNU7a1tfz0PbAC7Kqog+wX6k2AGEEHYeNtg46ZxHzfb/vRmZEv3A==
X-Received: by 2002:a17:902:d712:: with SMTP id w18mr2100486ply.238.1583521535151;
        Fri, 06 Mar 2020 11:05:35 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:868f:: with SMTP id d15ls1115647pfo.5.gmail; Fri, 06 Mar
 2020 11:05:34 -0800 (PST)
X-Received: by 2002:a63:8048:: with SMTP id j69mr4693199pgd.410.1583521534752;
        Fri, 06 Mar 2020 11:05:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583521534; cv=none;
        d=google.com; s=arc-20160816;
        b=HnteCqcI1H+1WXc/qFLpG4s5682AY0zp/CZy/E/kSpb0qITwV2wR8BKcvqAuM4+Nm9
         hmQDJ6dtQKtaCH3JA9QlRcSgeorwD418sS/STHW6e7g6pBXmhR4aDtSgLEXCX72r4tH1
         ufO/fq2Pmd+LuHt3fl1+yl72WnmFvF/+ajhpfrRJgkHxpxrwBnPxtre0pBCdpRiFf7Yv
         1Y0seyD8EeSb1f9ybWKF7pEDEmzgSGvZxP4vfa7qgDgM/5IZruHfKzckHRiVjhIMDsBd
         KU+3VkIzSKVE6Hu560B5GNnBiOsxJTo/G7h1bsAyJPTih3BAclH+R+3d7jmIGHJ+HCva
         Z+RQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=2X+Ul309yZGpemZW/4lXZNwmO0GYSEg/Q2NePCfu2XA=;
        b=VKRyPn+CvHvruW/mVj9zExdQdeTE5D8Kj5wScjgXYXTXgCkSxNCnXYkpRtjIAzOXl9
         uuHF7BvTeOHR7wfNaslVQdndDEy1aw5l1bq2CgLcaXHQodWVTVRrY7YAAA8m3PZVRMqx
         1cwhd3Yjj2b/gIcpo/Ccj0IB8Mh7Ifvl4PXUiSTNE1SZPBKwLN0S7bVqwgGahUIoFPlZ
         c0khZx09xQaeLlY3bTouPU3kMQA8jHBxIgQKyFpPSOQT+dgy9+CHL09Q/a2Nn6/2bFsZ
         hT9j7pciP0Qwq4fXHWOxUcWgGtgICIOS2YfTTCsjDyfXDlZPY7W2vnBPkx2lzj6bK/MM
         MgiA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=N3fchBtW;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::532 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x532.google.com (mail-pg1-x532.google.com. [2607:f8b0:4864:20::532])
        by gmr-mx.google.com with ESMTPS id q197si210807pfc.5.2020.03.06.11.05.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Mar 2020 11:05:34 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::532 as permitted sender) client-ip=2607:f8b0:4864:20::532;
Received: by mail-pg1-x532.google.com with SMTP id n24so1487807pgk.11
        for <clang-built-linux@googlegroups.com>; Fri, 06 Mar 2020 11:05:34 -0800 (PST)
X-Received: by 2002:a63:4d6:: with SMTP id 205mr4599584pge.10.1583521529641;
 Fri, 06 Mar 2020 11:05:29 -0800 (PST)
MIME-Version: 1.0
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 6 Mar 2020 11:05:18 -0800
Message-ID: <CAKwvOdk=eFqRqN0KO1en9wH-NhcvwXbx_ntmUtf8h_xZSd-qKw@mail.gmail.com>
Subject: ppc32 panic on boot on linux-next
To: Michael Ellerman <mpe@ellerman.id.au>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>, linuxppc-dev@ozlabs.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=N3fchBtW;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::532
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

As a heads up, our CI went red last night, seems like a panic from
free_initmem?  Is this a known issue?

https://travis-ci.com/ClangBuiltLinux/continuous-integration/jobs/295304058?utm_medium=notification&utm_source=email

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdk%3DeFqRqN0KO1en9wH-NhcvwXbx_ntmUtf8h_xZSd-qKw%40mail.gmail.com.
