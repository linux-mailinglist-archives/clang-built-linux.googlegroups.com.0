Return-Path: <clang-built-linux+bncBDYJPJO25UGBBBUAXCBQMGQE3FPMA3A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3f.google.com (mail-vk1-xa3f.google.com [IPv6:2607:f8b0:4864:20::a3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 32C25357496
	for <lists+clang-built-linux@lfdr.de>; Wed,  7 Apr 2021 20:55:04 +0200 (CEST)
Received: by mail-vk1-xa3f.google.com with SMTP id w131sf6220982vkd.14
        for <lists+clang-built-linux@lfdr.de>; Wed, 07 Apr 2021 11:55:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617821703; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZpUqb39+HcZ0tYTeTFQjt9l/pLYLL5gH/+YjSdDVIJK66Vr1//hdHblV2Rw4eCY1WM
         5/8o9zZ16IvYj4DyTw+Kg05+y/O3cAwEQU8/rhVeY5Gf+pgvZEK/m4ZOKLo1p5vamCZp
         GelAtStiVrTN0LKnDKtHfYGe94VznKhIhutZhKpaWk9AvZ+dLmCGbLxQAu65Fj3NMhAx
         TYWNb+q4+LLwrwQJ5asqp0FI05hv3/y2PBJ4zXtHM4rqZI9UiEs3fdmAQWbZ9H+o8HxR
         keJVM9StRzymWF56efFTS6DLKC4os40a/GSCx8sohI9rfsh5hujXrEyvp0zAWHskGnjI
         Rl3Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=sFRgG81JmDuDMPo62rjEJWFXaUAMn4PtdjtoaVGoRwo=;
        b=xLQP6lUxtokLMTVGpBStlBCXKUpgOXpRdEQ5SxhMcW16C/ocjmkPu9Bq8xlUj6y8pn
         pnJgEjWC+rW1lZ/MC7cifu348Dg4xTZhaxA0NNOb31IkXQtiF13/u03jypbWJ7fAVvFy
         fxemzEf/7hf33sLnKP/JEOG5JK53sNRWynM4cUb1+dB007x8gaycfAHRrIUH1TRLXuvo
         S/hFqGCQUeifJcw4ByXhpgUJZxmTp7A8VElIZD629Hr61alBC7VLY6U7tDvAzAi4I7nd
         ZhLX+o2pq5e7mdwgpdvokBNOBDVe328oNGfFqsd60Vvou9m2YO22eoG3Yt7j7bZSp32/
         ADhQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=dILJtwuA;
       spf=pass (google.com: domain of 3bgbuyawkamc0qr5n7y0vr45t11tyr.p1z@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3BgBuYAwKAMc0qr5n7y0vr45t11tyr.p1z@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=sFRgG81JmDuDMPo62rjEJWFXaUAMn4PtdjtoaVGoRwo=;
        b=emhV3b3nkr4AALAsKCA2Q2MsBAUWqWPA2KAVzTeXWlil/83inPRYyRN3jSBB5qfoL9
         nsHHKVbluBgqrAG23o43WaaaS+o5eVtyBeN9qmZQo5g2F8Wo3DTGOXh01fILo3R2x9vB
         aaYINi2LxcCJ9soLSBAvPa0/J24407pm2rsuVLSIafDoWcweZNYNlLcR0VA/OsqyDsPW
         S/N56Wi/DWL92trZ+X4SrVyhohGl46ZYfjIClWtCwcUrMZdYZGnCjo7oZj+fgmVyzxae
         NvhIkqwKHsiNRaW7PA7JAa68Y+7qC/LzK8HVDOo8ITLEmM57AUYf/KEUYJNBGY5gjUpJ
         2oCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=sFRgG81JmDuDMPo62rjEJWFXaUAMn4PtdjtoaVGoRwo=;
        b=gX9sFsQLHj3Vg1tNhy1+j4q3oysE2X5QpirxoYbxwQCgffYIT409fIHqmrS4RMBSFb
         /HRLw5di4PaDaIVgU/M3rgk6U7eiDYxP66WjMiCOvppJHzPOYDKzJCj+sIeruQzg82Z3
         nTaYNDBjOx0DsObhQF2JYby5qh/eVInRraRMz8FeTjMVk2S5IvM6bfh7hwJvtE5mRJXg
         VEPBWHhKq/IGjOMWOafTQm8+YHAQHQS8cQs9nz9MMl88Zt2/gS2O50eTl+TgIlJAkpdY
         iIJzg7P0YMegEcQloEVgemKfoJg43d0EGAnXYUl5e+qasj+/mS/F42fqiY0KsStrfi9z
         ubmQ==
X-Gm-Message-State: AOAM531Y2au95P9j42DV3mZ/0zj3AOhVuRbW6KC/k+0GK1QoG7cUhZfS
	sXm68jQCzbceaxKZjBQyBJE=
X-Google-Smtp-Source: ABdhPJz8k8c3ezJsHEARY0EiE0qeoUzrVL5WNoLg9jm7ZoL1TACBGUogirSAisvNjGDkzLnA12MabQ==
X-Received: by 2002:ac5:cac5:: with SMTP id m5mr3183970vkl.13.1617821702998;
        Wed, 07 Apr 2021 11:55:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:3158:: with SMTP id e24ls267227uam.11.gmail; Wed, 07 Apr
 2021 11:55:02 -0700 (PDT)
X-Received: by 2002:ab0:724c:: with SMTP id d12mr3153201uap.63.1617821702394;
        Wed, 07 Apr 2021 11:55:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617821702; cv=none;
        d=google.com; s=arc-20160816;
        b=ddX+UZg8WxSuS5gfjGEpCoUqd+v83c/mhj9/T4Cd2f7Q+zxlZbPMaszPQHkDC0lNm9
         x4T8JzK7yyT++EqXSVvQXdI1W5HRZi1qQ3jcjj4IviiqpUkT2YWdLLo3e5TMj5O78AFa
         LOeMaEcmxzF4LVw+6RJVfw6VksEoVh5OXTCFhu71jrVS/O9FO1RxA0hUFD/WYCzfqd5C
         FQB/2Gshc5nlWc1OCvm1tWdlmh0MH3Y3ynHAMVdirbpIwgxozjyu5DfsyYD4I9IJZlRr
         +QI0781OeLzRDNa8qMn55VnWQ9w1HW/Mpt3FREz3i0gxSS4KENE+3ZjVWEqgMzxRXcm6
         9FgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=YY9eveig3pp5+PlL75Purc6wsBlhiQiCMLwdknhjln8=;
        b=hJ6LTr1rixQi1ZnzVY4kmBtj5ZypntBia9asArARC9AWy3vCC+aCakY2bseOEd43Gk
         9qCJ97tty35UYcHPtQ96q9DPfrTuCDZirvhrPoIbkyzZaWLruXxC4ymswJJ1kVYQdF7I
         peGtn/WkzSvfR28pHHo9ZfLXyIoRPQu38+RCOYT/Jmgqf6SIoFrsr+H0ugkcdioBNTqb
         bTaPzY/pDnKYRKkDBWDU0meiMbYKKH/l6Uqm/EwcevrgYUB1kgV3mupD2qK/hH2/8rKC
         aGAdPy7jOzVn4AxQsJGll1WkTzrfMQ3L+bmbWVMZ6T1wuS+LQYOAr/OQZwcpKBXrBr0T
         dY+Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=dILJtwuA;
       spf=pass (google.com: domain of 3bgbuyawkamc0qr5n7y0vr45t11tyr.p1z@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3BgBuYAwKAMc0qr5n7y0vr45t11tyr.p1z@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qv1-xf4a.google.com (mail-qv1-xf4a.google.com. [2607:f8b0:4864:20::f4a])
        by gmr-mx.google.com with ESMTPS id r8si1579525uat.1.2021.04.07.11.55.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Apr 2021 11:55:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3bgbuyawkamc0qr5n7y0vr45t11tyr.p1z@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) client-ip=2607:f8b0:4864:20::f4a;
Received: by mail-qv1-xf4a.google.com with SMTP id bl6so5421369qvb.9
        for <clang-built-linux@googlegroups.com>; Wed, 07 Apr 2021 11:55:02 -0700 (PDT)
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:c454:8587:ce1c:e900])
 (user=ndesaulniers job=sendgmr) by 2002:a0c:f30a:: with SMTP id
 j10mr4958678qvl.20.1617821702090; Wed, 07 Apr 2021 11:55:02 -0700 (PDT)
Date: Wed,  7 Apr 2021 11:54:54 -0700
Message-Id: <20210407185456.41943-1-ndesaulniers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.31.1.295.g9ea45b61b8-goog
Subject: [PATCH 0/2] gcov: re-fix clang-11 support
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Peter Oberparleiter <oberpar@linux.ibm.com>
Cc: Nathan Chancellor <nathan@kernel.org>, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, Andrew Morton <akpm@linux-foundation.org>, 
	Fangrui Song <maskray@google.com>, Prasad Sodagudi <psodagud@quicinc.com>, 
	Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=dILJtwuA;       spf=pass
 (google.com: domain of 3bgbuyawkamc0qr5n7y0vr45t11tyr.p1z@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3BgBuYAwKAMc0qr5n7y0vr45t11tyr.p1z@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
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

LLVM changed the expected function signature for
llvm_gcda_emit_function() in the clang-11 release.  Users of clang-11 or
newer may have noticed their kernels producing invalid coverage
information:

$ llvm-cov gcov -a -c -u -f -b <input>.gcda -- gcno=<input>.gcno
1 <func>: checksum mismatch, \
  (<lineno chksum A>, <cfg chksum B>) != (<lineno chksum A>, <cfg chksum C>)
2 Invalid .gcda File!
...

Similar to the last series, the patch is broken in two. The first is
tagged for inclusion in stable in order to continue supporting newer
versions of clang (clang-11+) for that tree, then the second drops the
older implementations to keep one and only support clang-11+. This same
pattern was done recently in:
https://lore.kernel.org/lkml/20210312224132.3413602-1-ndesaulniers@google.com/

We've since added CI coverage of CONFIG_GCOV
https://github.com/ClangBuiltLinux/continuous-integration2/pull/107
but need to find a better way to test validating the coverage info in
userspace.

Nick Desaulniers (2):
  gcov: re-fix clang-11+ support
  gcov: re-drop support for clang-10

 kernel/gcov/clang.c | 20 ++++----------------
 1 file changed, 4 insertions(+), 16 deletions(-)

-- 
2.31.1.295.g9ea45b61b8-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210407185456.41943-1-ndesaulniers%40google.com.
