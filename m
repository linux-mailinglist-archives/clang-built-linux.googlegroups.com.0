Return-Path: <clang-built-linux+bncBDIPVEX3QUMRBQXF474AKGQEQLBHHRY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83e.google.com (mail-qt1-x83e.google.com [IPv6:2607:f8b0:4864:20::83e])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A44422B7B6
	for <lists+clang-built-linux@lfdr.de>; Thu, 23 Jul 2020 22:27:48 +0200 (CEST)
Received: by mail-qt1-x83e.google.com with SMTP id h24sf4471315qtk.18
        for <lists+clang-built-linux@lfdr.de>; Thu, 23 Jul 2020 13:27:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595536066; cv=pass;
        d=google.com; s=arc-20160816;
        b=ru9KcUPKuoiR9wDUUC3njZPhHGjbI6E683aD4Fp5GJmvRPHdCay2M0SIoFBVOn+Ics
         MN4YwsAOiLlApRmuAAm0cddkBZrqIOzJa8Mz8iKeEc/ZuSUexmOwYpG/BzLJLn39d1ZR
         2Ucdl9AfHNtcNx5+BE434LESLl2q0W8wVybA+Jw08uuS1680wVaR3PU+ePYOrwhrjEcL
         Cq1d30E0+ai+obqo+AcwiY84GDJIUaNXD14rmJVZdmD+EiRbRfqmVsMOtfVUtURwVZKb
         pzaEzIszqTUpBBlb6xdxglmha/LSOfnt9AyqIBWGBZiLqyn7ZlWfpSdoYB8zFMfvysb5
         hHIQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:organization
         :references:in-reply-to:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=5IeD46e/KGSVQWtANGKhOcl7m08twGNseGpBw99tJ5w=;
        b=0RP990FElhMjjcQnrKTuy2ZWy3LFv6rdkpHmfGZhiVbsf84U2PY9aHKLwohjLSibrd
         8iV/wCqwiEYql+jdmhja1SolvUntXJ2vg4o7lRHHfXhTETYlf8IR1L89xdPyKfyFlKAB
         j/QIgPHvXg46jM8eLskDbuiZkFdz/Da+KbsyKQ/JQgSLNqz6vTffoUq5moVWw5FEswpO
         NPQcZ5g4QvuEFPhB+YVjDlV/jF67S/aDCWwU+36Gc7TRlvG+keOnXx80KMRmzLkaYTDX
         MW3mERMfeVKDlLCzX9HfpdcmkK30z96B1zejpXXrJIHSVLCQs4b1ip5TWKqWaNllWUHX
         /cVQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of corbet@lwn.net designates 45.79.88.28 as permitted sender) smtp.mailfrom=corbet@lwn.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :organization:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5IeD46e/KGSVQWtANGKhOcl7m08twGNseGpBw99tJ5w=;
        b=ZsiIPQzU+CK1VNLaCdcj94J4YWQ1AH3lpNAEcb1hFaoO2eBe17wzSzE3+Ftne1Tmbl
         TAcZm8fDoPu8nulL1ybKWen1YDloRBk3/1cm7XtKJ8ozUD2lj+CNbryd7JtYM9J3bXfR
         jbPIzz5sh5qFS9pd+FHLrX1lyqIRo358JpeYeHSKY5dbLToSU8X4kcJvZgn6wuon+1ul
         5AB4aw8M0YAGCeEfcmxPeJznr0+CIwL/NFlEoToyQxU5w27BtyTkYmy1u78bhiJCegqj
         s0GqPxdEhISXg8gFvNdHZ1bzD6Fcvd9KjCJLk4mHiOK/axcjpNqgfV9xTD3WUiTSwPvU
         y8kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:organization:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5IeD46e/KGSVQWtANGKhOcl7m08twGNseGpBw99tJ5w=;
        b=PgsIn6IQxXrlUTqeS2ygkgllC7utdRDTqnR7BpNgxLFjyZ/7IvHbEW2P0jn99rrQ7l
         Pnk8rTeLAO03kkhR8udoKCJq/KlK515S1S5o8z3kvVLcAt4UAXWzV5sJ8i4EJ9o8ufGp
         XFQc5Hm8zOV8vI+QOAI1gYNvQz/a6atw+LVUTNzucqk93TzhvuvOzGXCPQjgDRehdhMO
         LH+r9ZR/03I6A/4eufRBern7uN70rXPY3+h/tRW6FsyYZsMF2eSokrZSikTdvfbMVRYg
         EjR7OBpAOI+HaRr3re2DCrSb10RQGcsi4x5Z9N2Lb2L+KcJfLbzPrVU9fwMs6oidDUM9
         CIPg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5311K7p09GzE5QcXyj+D4pn6RqW3FhHXYpL9v+KfhyEzcORnbHQn
	tM0prkH6dnlTZ8NWxuWVm9A=
X-Google-Smtp-Source: ABdhPJy5VdFSkA6WDtFpbLctyvW8ao361y3DoFo/fsnMU4eQERM7xb1FB0SK9o10J9JsGCG4yNKR2Q==
X-Received: by 2002:ad4:57c7:: with SMTP id y7mr6789953qvx.124.1595536066618;
        Thu, 23 Jul 2020 13:27:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6214:2a2:: with SMTP id m2ls1582562qvv.11.gmail; Thu, 23
 Jul 2020 13:27:46 -0700 (PDT)
X-Received: by 2002:a0c:b48e:: with SMTP id c14mr6567420qve.47.1595536066334;
        Thu, 23 Jul 2020 13:27:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595536066; cv=none;
        d=google.com; s=arc-20160816;
        b=pdSKulnsgDiMcqbeTsjyMhlz5MMP+zAG4TwXk1T44kS/RYigp9qTx/1LTb+koAJPap
         CR2Z1aNC8Bj9dH7ldE1UNcDrt7e++DrJo8omJjSs9OIrI2wz2wDkWoI9EYzvWd+tUKvb
         zvu6aJLvOwjrep3fuYz2ijlKyC2GHUEOZ2v13VquW/LkLT9QV71vlgWEhLdruc2uoziy
         Yx+3OnhDXv2HL+RGqGsqqP+CN+s0GeI2eHWYW95cOU0gAIeXjyFei8DM6VK+VU3zlexg
         kQeueg43PlC9oGt7iDnp3VI77y5smbnlm04+skPBMrFynpQmnFirh9G1RLVtQO/Uio3O
         opWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date;
        bh=UA9R4szV1KAtPvxqyy58wRcaoqAq04chgbRlO6LrtW0=;
        b=mJ883eFABNfDuOUpyJtci12oAtYUw6c56xirjLOdh43Sk4Yj1wYt1qV7MWJcm/ZUln
         jGHaYp3niZ6TpFMoaAW4NaiW5kZXfVhgsDn1Z642gfy1Xcl2xrX6XPdJ6CyI5O7bfDYV
         Ocl8nbLsIfoADRbAP29yWh8OL/zTAaSHtPOtQcmnhEp2+yb8aw8cohHszxxqY7pSuHxq
         iPJgpwNd0/fENYq2W3Q+/kNSSwzydMSsOH/QucZZEo+uw/MwqxREHx6HCbonndwTsun8
         boKtVoigyw6s7usU9ibbthl7wdMkelEwby+6QznSa+gCEBv3d8TA9+XjJ/SJ9VfLkvCP
         J30g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of corbet@lwn.net designates 45.79.88.28 as permitted sender) smtp.mailfrom=corbet@lwn.net
Received: from ms.lwn.net (ms.lwn.net. [45.79.88.28])
        by gmr-mx.google.com with ESMTPS id v201si347962qka.4.2020.07.23.13.27.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 23 Jul 2020 13:27:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of corbet@lwn.net designates 45.79.88.28 as permitted sender) client-ip=45.79.88.28;
Received: from lwn.net (localhost [127.0.0.1])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ms.lwn.net (Postfix) with ESMTPSA id D9FFE2BA;
	Thu, 23 Jul 2020 20:27:44 +0000 (UTC)
Date: Thu, 23 Jul 2020 14:27:43 -0600
From: Jonathan Corbet <corbet@lwn.net>
To: "Daniel W. S. Almeida" <dwlsalmeida@gmail.com>
Cc: ast@kernel.org, daniel@iogearbox.net, kafai@fb.com,
 songliubraving@fb.com, yhs@fb.com, andriin@fb.com,
 john.fastabend@gmail.com, kpsingh@chromium.org, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org, bpf@vger.kernel.org,
 clang-built-linux@googlegroups.com
Subject: Re: [PATCH] docs: bpf/bpf_devel_QA.rst: fix reference to
 nonexistent document
Message-ID: <20200723142743.0df6263d@lwn.net>
In-Reply-To: <20200718165107.625847-6-dwlsalmeida@gmail.com>
References: <20200718165107.625847-1-dwlsalmeida@gmail.com>
	<20200718165107.625847-6-dwlsalmeida@gmail.com>
Organization: LWN.net
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: corbet@lwn.net
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of corbet@lwn.net designates 45.79.88.28 as permitted
 sender) smtp.mailfrom=corbet@lwn.net
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

On Sat, 18 Jul 2020 13:51:00 -0300
"Daniel W. S. Almeida" <dwlsalmeida@gmail.com> wrote:

> Fix the following sphinx warning:
> 
> bpf_devel_QA.rst:444: WARNING: Unknown target name:
> "documentation/bpf/btf.rst"
> 
> No target was defined for 'btf.rst' in the document. Fix it.
> 
> Signed-off-by: Daniel W. S. Almeida <dwlsalmeida@gmail.com>
> ---
>  Documentation/bpf/bpf_devel_QA.rst | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/bpf/bpf_devel_QA.rst b/Documentation/bpf/bpf_devel_QA.rst
> index 0b3db91dc1002..a26aa1b9b2595 100644
> --- a/Documentation/bpf/bpf_devel_QA.rst
> +++ b/Documentation/bpf/bpf_devel_QA.rst
> @@ -643,5 +643,6 @@ when:
>  .. _selftests: ../../tools/testing/selftests/bpf/
>  .. _Documentation/dev-tools/kselftest.rst:
>     https://www.kernel.org/doc/html/latest/dev-tools/kselftest.html
> +.. _Documentation/bpf/btf.rst: btf.rst

Applied, thanks.

jon

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200723142743.0df6263d%40lwn.net.
