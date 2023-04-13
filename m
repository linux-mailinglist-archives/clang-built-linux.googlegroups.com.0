Return-Path: <clang-built-linux+bncBD56JVUBSEPBB2EF4CQQMGQEYVLJZHI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3e.google.com (mail-yb1-xb3e.google.com [IPv6:2607:f8b0:4864:20::b3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CE396E0E79
	for <lists+clang-built-linux@lfdr.de>; Thu, 13 Apr 2023 15:26:02 +0200 (CEST)
Received: by mail-yb1-xb3e.google.com with SMTP id 186-20020a2510c3000000b00b880000325bsf32097316ybq.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 13 Apr 2023 06:26:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1681392361; cv=pass;
        d=google.com; s=arc-20160816;
        b=tNw/FG0KEt6E94GhLomUYMBa/q0qE4fWbObBFzEe+wFI64A9oYg9Zxn73WisShBQOL
         efhyT9vZJyDBQw6g3FPQm4nAa7KrwkN1Z4NQUCttlkSFvXDz4DLwHgoAfzyssdo/XB3+
         Q2ncZgEzOKsd/Yo0U+xTmEkk/8f7LNYmotLBUwnLf0EZ9Q72Wl8I4fxUjz6HlN4jnJ/d
         hUsCJULL/I7JQCsTed2qENyJTsP7CwNP8xljhiLGJtt6pDWeMgolcBiVfpxaunPBZ9IU
         5ExSHX0fzFd8yCUnNC+wZYSdjscHQJ/AakIetF64G6D80gEi9Fk/RU2Bdha0tE/mMYOQ
         HG7g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:subject:message-id:date:from
         :reply-to:mime-version:sender:dkim-signature:dkim-signature;
        bh=EgEP6cNr+Y6CW5UrfqZ6/d2Nghc2HQ76h8UqtSmOk3o=;
        b=wcsg/gODOIpp0jk6JwaF3lBngWen0dmLHW98I/C1mvueTOmEpd7O5xqchGnkVdyLe6
         rx66fJFqV68/NVJO94ScafVFbHuepB38M71cKdkQeE2I7p2L4oL4RgyPiqRiyR/Mu4Jk
         UnyimLFmlqxJpqvTv/poSIs/wbBTkjcskz5QWiQQl+bDwH6SvzyQfGPBFywRuAQuM/ln
         2djnSyuanr2iGNBBf3gWmVJ1ewoyJFiDDU1Gjriqm1/vTjOSKnUbI9sb6bTeo2ez4fgd
         bj2xzIsCfC5eY3PfgXfi0FyoLi7qMtuhFNtdhUgY1V1piJsIZWJiqBlonAZOb89iXkjw
         UqwQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20221208 header.b=sWBdyghr;
       spf=pass (google.com: domain of westernunionheadoffice65@gmail.com designates 2607:f8b0:4864:20::72e as permitted sender) smtp.mailfrom=westernunionheadoffice65@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20221208; t=1681392361; x=1683984361;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:to:subject:message-id:date:from:reply-to
         :mime-version:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=EgEP6cNr+Y6CW5UrfqZ6/d2Nghc2HQ76h8UqtSmOk3o=;
        b=k0UuloZNVCULWmeAoS7wFh2wXlA1e7gZdSuDJ4lupW9mu7UW27oLdn1TvzZlmb54XY
         lM6d7FyBhEoyYU9a2RJtNJHd2Hzy9mBXD9k8souSHHo07SEWSHOj3q2FEwfRjNw1bMah
         Iv6W9R3Zz5iftV2PM9Xla/JLTVKGPda4Od4yjL98LQh8dEu37IxrSWVtlsEjnlluS3Ai
         WyB4wzkqNp5UoKoQ4E3zLijOkr9xOUfHbB/gjb4EaOzvdmh3GdE/OxUtcgbG/d4siE2/
         SpuUY+xaOTVSJclGkP858u0j285Sj9ycdFCPN+MPXqTRJ+caRbrTlrufeFcf/5tdgsAK
         dPXw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681392361; x=1683984361;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:to:subject:message-id:date:from:reply-to
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=EgEP6cNr+Y6CW5UrfqZ6/d2Nghc2HQ76h8UqtSmOk3o=;
        b=CJSmQpH0kxEO3adFdlN9Bp9QfPlES1FlkZKuVrGQmLuudA/mhwC6+i5EA9FdPqcAXk
         9EQxLnhf4nuBW87MaoVs4VRPB2hn8rzU3BMlZ/bvSqNVavD3mElpJq69T7OcRU07kmNm
         /HsVJprANQzZ6QN6+1AAcc1iekC1P7pHjSPsYqRJQ+Zp01MlXNM6u2Ys7bEp34AXOvck
         TXpz5tqHgBr2PLnXDVX/JOs2iSHoVcHL21uxxFK8Kosnovitx3wVWBgRMjs3+bA7aoua
         Tje3BVFlNnRhVhUxYsWeI/0U5vX9HxGNQmElRds2Vg1zQitzMs2+yBQKsc+k8SrAXKtP
         OWyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681392361; x=1683984361;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:to:subject
         :message-id:date:from:reply-to:mime-version:x-beenthere
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EgEP6cNr+Y6CW5UrfqZ6/d2Nghc2HQ76h8UqtSmOk3o=;
        b=PT7NKIPjFr9J7xtzz4mGpFh1sNT8L5/Oony0SGA+UqA2z+jVk+7/loIypxW8i+Hkw7
         0S4GsxY7kQg0LWCkOQNZ3vVf5tvFicK4u/qi2SKNGMyUlMSjAgFu3MbBxKfqalEqVRb+
         jaChRpQEy8S/oHbQ7lPLjdVRhh/CF0pRevZcYg211F9Dru9PH41ZcWbXgbeKjSFuvbCv
         sCkhEwL3vb49o86Vy8oljTqWFz++IF5R/iaWfNONxti5C62CYQCVjHclAPLNc0TkS5eC
         G1FhI7hxmR2RjHVlpk7nqOhUwciTSWRpHtQUZrByQhVj5oGHHikurZQ0Vi+QtbZd7oNZ
         /aAg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AAQBX9fSHXCfX69IRH7kYUzEUj1wtzD7fNgqYgRcWDNpHH+gCwjunnZM
	LOkICt2m5ZV9j60pk89KvEg=
X-Google-Smtp-Source: AKy350Z04AIFvlmpSJHpNh+Nc759Oaoxk0cVgEJsPFdw+S3AoGPXhnsgedhxEXAWHNrIp/K+0ky31w==
X-Received: by 2002:a81:ad45:0:b0:533:8f19:4576 with SMTP id l5-20020a81ad45000000b005338f194576mr1445603ywk.0.1681392361001;
        Thu, 13 Apr 2023 06:26:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:800c:0:b0:b8c:27c:1473 with SMTP id m12-20020a25800c000000b00b8c027c1473ls1037630ybk.6.-pod-prod-gmail;
 Thu, 13 Apr 2023 06:26:00 -0700 (PDT)
X-Received: by 2002:a05:6902:1891:b0:b6a:514e:9d85 with SMTP id cj17-20020a056902189100b00b6a514e9d85mr2143694ybb.10.1681392360308;
        Thu, 13 Apr 2023 06:26:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1681392360; cv=none;
        d=google.com; s=arc-20160816;
        b=KAxr8ZtvZ2BwtzzgW6/QtbbVoANDATpbdkwIMcSpo2xzlGYMkQZQaMAjMjrbMVwRvy
         mm6AtPXw4cZXbdFyLGCmf5rGnvcBZRjPur6oByY2DgkkQTf02YyPRjtpBH6vOUg56zud
         v5IXhDpa+mlWJfQbdLWbQ7L0G84tEjHN4fXzPnjfW6mZ8qGPpE9U5LmGua2Vaggz0YnT
         7skc2MlxGFKt/OG/bVZbWDpHvb813hMfixALMaNRLBSBoVS4sRv2l1cosIlMUrTlJWCU
         HtrNUHKCcgvv4uzzXR5KAEq8ZH1xC1aqNqeN+sOUi00vBr8SEQjlOsPNDb/Hq1eRNQw4
         IM9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:reply-to:mime-version
         :dkim-signature;
        bh=5RfXJvDmjvocWuhXvJ6jLpYq4JXsjR+fgzQcvxm1L7I=;
        b=THgg/ykmKw7HJKrdDkz0yjyCvWhJuUgtcDPuJzdg+BGXqSSqhV7uUi33x2TvMXRHoD
         DeOJPrV2uZQkHnE9fzlcdiYzEh508O4jgO1FM37xJonQuPGYbYohgW8AIHdVwUG56Fr7
         1PHRkA09nQap7uk3IKF17jHGj6mFm2eR2TWj9lCZs6yWWcsAIN266mPsWs1HXQYfL9EH
         Iqpemzz8vNann96+MKmFymlCZNHLKbBaCG0GPmxKleG1pvFViqxocWU8ybEM3xciJqmU
         EfLuZnW7FUZEgmBKw7kcpUcfJi7OzD2PtO/dlUzr84AHqphAJf84IwoxdlQOQ2WSvhFO
         99SA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20221208 header.b=sWBdyghr;
       spf=pass (google.com: domain of westernunionheadoffice65@gmail.com designates 2607:f8b0:4864:20::72e as permitted sender) smtp.mailfrom=westernunionheadoffice65@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x72e.google.com (mail-qk1-x72e.google.com. [2607:f8b0:4864:20::72e])
        by gmr-mx.google.com with ESMTPS id e13-20020a5b004d000000b00b8d981f2bebsi85793ybp.3.2023.04.13.06.26.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Apr 2023 06:26:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of westernunionheadoffice65@gmail.com designates 2607:f8b0:4864:20::72e as permitted sender) client-ip=2607:f8b0:4864:20::72e;
Received: by mail-qk1-x72e.google.com with SMTP id j19so4945399qkk.8
        for <clang-built-linux@googlegroups.com>; Thu, 13 Apr 2023 06:26:00 -0700 (PDT)
X-Received: by 2002:ae9:e50f:0:b0:742:9899:98fb with SMTP id
 w15-20020ae9e50f000000b00742989998fbmr279492qkf.7.1681392359970; Thu, 13 Apr
 2023 06:25:59 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a0c:f353:0:b0:5ef:434b:5d25 with HTTP; Thu, 13 Apr 2023
 06:25:59 -0700 (PDT)
Reply-To: mrs.elizabethedward77@gmail.com
From: "Mrs. Elizabeth Edward" <westernunionheadoffice65@gmail.com>
Date: Thu, 13 Apr 2023 05:25:59 -0800
Message-ID: <CAFuZoN+5=VJGMkF3aGU4VVrUCs0FAsUB_xtvq05Z=0jQFm-xtw@mail.gmail.com>
Subject: HELLO
To: undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: westernunionheadoffice65@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20221208 header.b=sWBdyghr;       spf=pass
 (google.com: domain of westernunionheadoffice65@gmail.com designates
 2607:f8b0:4864:20::72e as permitted sender) smtp.mailfrom=westernunionheadoffice65@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Greetings
Please forgive me for approaching you through this media. I am Mrs.
Elizabeth Edward, 63 years, from the USA, I am childless and I am
suffering from a pro-long critical cancer, my doctors confirmed I may
not live a few months from now as my ill health has defiled all forms
of medical treatment.

Since my days are numbered, I have decided willingly to fulfill my
long-time promise to donate you the sum ($7.000.000.00) million
dollars I inherited from my late husband Mr. Edward Herbart foreign
bank account for charities work of God and there is no risk involved;
it is 100% hitch free & safe because it is my inheritance from late
husband.

If you will be interesting to assist in getting this deposit fund
transfer into your account for charity for the mutual benefit of
orphans and the less privileged project to fulfill my promise before I
die, please let me Know immediately and you will take 50% percent of
the total money for your effort and assistance while 50% of the money
will go to charity project. I will appreciate your utmost
confidentiality as I wait for your reply.
God Bless you,
Mrs. Elizabeth Edward.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAFuZoN%2B5%3DVJGMkF3aGU4VVrUCs0FAsUB_xtvq05Z%3D0jQFm-xtw%40mail.gmail.com.
