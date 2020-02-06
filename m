Return-Path: <clang-built-linux+bncBDYJPJO25UGBBI7B57YQKGQEUMUN2HQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x340.google.com (mail-ot1-x340.google.com [IPv6:2607:f8b0:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id AAC22154268
	for <lists+clang-built-linux@lfdr.de>; Thu,  6 Feb 2020 11:55:32 +0100 (CET)
Received: by mail-ot1-x340.google.com with SMTP id f25sf2998605otq.15
        for <lists+clang-built-linux@lfdr.de>; Thu, 06 Feb 2020 02:55:32 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580986531; cv=pass;
        d=google.com; s=arc-20160816;
        b=GLU27hpmRjE2IKBHhYVcmJyfb7jTlNS6ytAVPdf9DYp1Qp5qwfwfXISOI9JgCgo0TP
         qbPPx6gsBCVG1k4kSoDiF4RNYgBBEZrwd+S0o6oGKqWOhBnZWojiij2Mol4vZLvzrpOO
         1KoD2kyCIAn3AyQfP4dQR36slXlynXYmDzX7Gqs6xCaEq9NB50K4YaadnOvpKh0B6oPV
         auQIVTi6xb4yi0uA4cvfsaowSN8ZzZZY/9tKU5QHJzlZcqHtIWfyB/83fTo8Mt/6AvpQ
         GgdRzwZ0sCvEkn+2KgTDSEZf/nqCEAcDTdgT+5cbg/g/+rn5Ximwu4mBTIup+6yUFNhb
         cz6A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:subject:message-id:date
         :from:mime-version:dkim-signature;
        bh=0wcO63kD9tXoywR5YEy2Vm4XPiCXKkHvXBJf2tbhkpo=;
        b=Zwrsv80VeOHtQnINc8ow8hxyiVns8o/0Peosjq54AzwQkiT2qktepNkI6n230IstHb
         tltJxfOzrMfFryPAsZ1rn9iY8jFKo8kIfOTJWR0zKfQefzTOTl05/YEAU+hGkMv9InwM
         felBCyFT23Ush410kC2EfY2By4/r7OQX3gJk2IvqrxH1NC87CrKrlfv/owtHf1N+Ou2i
         th4w/dAPBl2aNJ5Slqa2aVOWLoTLt6fuh/1rbRQOfzhEneK2qtjbHBSIScmyjohuYUzT
         2ISY7Oe91hpaF0hqRi+GJR7yhBnHYY4tCAbk1Mt61mGLzPI6bdsb0QYd3ai1EZX6Y0RJ
         ZO9w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="Uakd/YuA";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52a as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=0wcO63kD9tXoywR5YEy2Vm4XPiCXKkHvXBJf2tbhkpo=;
        b=SgtWCk29CKotdKlPbnSY1I/zmzcidJnUgio7AsrV2JLcVfMB2E20byp+BfR7jm5FeV
         diFKdRC5M2nU9EFqilCBaS6sR53SQuQusHtpmYpJOrx7bIitvBHdPy2tzD2emvScmfmy
         8vqpVKpIAMZXT5AZpWEPDFq1qKfiNwN8j/9tl4NtBSZvBLmcvt7HVNCliKgNq+lpwQso
         6GRHe9yJAFy3A+lWPRsOHz68T4REaPXbmSH74pik1xuIozANlnXegCJvgnIDO6UFMBKL
         1bJv9Z08BQP1JNjFUEHPem78xBiYQB9Y1QsSHHEnRD9cYETZa+swuV9SGA3rM7Vhxafw
         sf5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0wcO63kD9tXoywR5YEy2Vm4XPiCXKkHvXBJf2tbhkpo=;
        b=N8Fp+84fhFZAx77an9ObbLjz9GnRMNzJhRan7IcNiC1dBSl5f/ZUHOpE3u0tdMiIgB
         HNH1iAU1cGT2MrsC7VbPHFQsTaF0d9+vywzBJIR+fRIGqlhJeM8dZmW8WDTd/54oDp8Q
         FITzAe/y4V5yOW9L3eEdzhZMIaBxlWbdmclmVwONLRf2yH9abIkyKaKq1wH0Lox44j0u
         oRMV1619dLve6i5CRqaNAnK0KO4psK5ZEe9fB82FH/n0ymPDIynYNz9/8jv63bKqu/rO
         TDeuU7mnMaf3p+i5LJJ/YZdejxUz6/dm9mCCLfwye+l+p0c+8o4eg6Pi7Dcigt5mCDmr
         Qq3g==
X-Gm-Message-State: APjAAAX9latNH/avDqe0dBN+WoncTQ5y8n6TeuV13ceOXIQ/pmFqr/6S
	txe57Q7TOfnmfBqPQTN0hKc=
X-Google-Smtp-Source: APXvYqxw7d70c97UvhAXfeVcog1orpcbqZ+DW8eEqDalDmi/CIH8tLip62TDgRc5QAW2QgS06DMZYA==
X-Received: by 2002:aca:ec15:: with SMTP id k21mr6527790oih.35.1580986531201;
        Thu, 06 Feb 2020 02:55:31 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:7dd6:: with SMTP id k22ls1646689otn.5.gmail; Thu, 06 Feb
 2020 02:55:30 -0800 (PST)
X-Received: by 2002:a9d:6ad6:: with SMTP id m22mr17428016otq.7.1580986530800;
        Thu, 06 Feb 2020 02:55:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580986530; cv=none;
        d=google.com; s=arc-20160816;
        b=JKB4BIPcjvwxoxhZ64+R38BAGnaY0FIl930a+PBYVtpWaa+okB6pbcVu/RyjfBHqrU
         D7I8uNJvrxR6xn02r/flK8bDEL86hd2tAReaoRkY8DYPF/wFcMVCg2c00v8D0RkApDrC
         FHdKfh+0yN1il3ebL35I0ehMM8tiPYNyHDvhibMJZOAsgIt/HoL8lFGpDwHzi+GllBFr
         Pl8MmJ564zq2aASydDKnL+WsUYAmiGRb05esC9kIfTyFq0DFmQ1PJue75+IaDWtoXD8Q
         qvmYAa9R7Aoo2g6d4t/Gxb3HzDgRS3TZCmV98e2a9IjeSBsiANUy3Y/aWL+BPopdNc8X
         9K4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=5PrfHdFpJMPlw3h7tEFt4l6hHkTkPyfjlhROcoJYLKg=;
        b=Dm09DnXfST07o7qVYxfRGMi397VVutxZ+h2V+obUE5OrR22I5ijDu8aiPfpijqYI2C
         GqnUdkfwTcojjUKXdGw7wW2TytvwlF8/9PwetROvqAGJEo/4e9e/9uhW8hRCYMaJzuTm
         vARLi+/n7KP8/F1csGJs3berTrN5QvNDE5ZmQxWJ6nxOKwgGn7r4ybeOe1W7RVqAQQha
         J+UKC3rdzdT02EuYD+E4ztgJ7fC41vijaegelLMLXbpZXl3fBHgLCYh3AvFnEEc1aaxe
         f4AE7+nV8sglmY1HbZieRrRsN6glFEeJQSLYSoy4uhfavAfAdN0LDUbFuiPtHtEmSNKp
         of+w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="Uakd/YuA";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52a as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x52a.google.com (mail-pg1-x52a.google.com. [2607:f8b0:4864:20::52a])
        by gmr-mx.google.com with ESMTPS id o11si182462otk.0.2020.02.06.02.55.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Feb 2020 02:55:30 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52a as permitted sender) client-ip=2607:f8b0:4864:20::52a;
Received: by mail-pg1-x52a.google.com with SMTP id k3so2560581pgc.3
        for <clang-built-linux@googlegroups.com>; Thu, 06 Feb 2020 02:55:30 -0800 (PST)
X-Received: by 2002:a62:37c7:: with SMTP id e190mr1868428pfa.165.1580986529615;
 Thu, 06 Feb 2020 02:55:29 -0800 (PST)
MIME-Version: 1.0
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 6 Feb 2020 10:55:17 +0000
Message-ID: <CAKwvOd=FWWa6vLrFqzG61cUvRKF+z6hy+6+1VW61RPbs94xhbg@mail.gmail.com>
Subject: delays in LHR
To: clang-built-linux <clang-built-linux@googlegroups.com>, Bill Wendling <morbo@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="Uakd/YuA";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52a
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

As a heads up to folks traveling through London Heathrow (LHR),
flights are getting delayed due to fog. Check your email and google to
see if you're affected. (My flight just got delayed 41 minutes; Brits
assure me "it's getting better though" (narrator: it's not)).

For folks headed to the meetup, I don't think we have concrete plans
yet for tonight; I assume we'll meet up in the hotel lobby at ENGIMATT
then go from there.  I'll send another email once I'm in ZRH and have
more info.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DFWWa6vLrFqzG61cUvRKF%2Bz6hy%2B6%2B1VW61RPbs94xhbg%40mail.gmail.com.
