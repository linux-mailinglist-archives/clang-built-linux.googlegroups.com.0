Return-Path: <clang-built-linux+bncBCIO53XE7YHBBOHLS33AKGQETVT2TWI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x840.google.com (mail-qt1-x840.google.com [IPv6:2607:f8b0:4864:20::840])
	by mail.lfdr.de (Postfix) with ESMTPS id AFF8A1DC27F
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 May 2020 00:56:57 +0200 (CEST)
Received: by mail-qt1-x840.google.com with SMTP id r9sf5487338qtn.20
        for <lists+clang-built-linux@lfdr.de>; Wed, 20 May 2020 15:56:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590015416; cv=pass;
        d=google.com; s=arc-20160816;
        b=KjbFilAVTcpJJx2ZQhDGOZgxpT6FDslrpLSSREbP2EQeKvYkuZrkFWPHWdBRISbHdU
         96A5KdluCHnp7hoJY8F9pZtGcc0V7jDsUxM15eCUBVUCWP/rB6DQ4xmV6pqfM2Wi8fPF
         QYv++JCojANrz3v+e9orJd2xqidQ78TXQ0iRHJ/wdlxbUqRYLWk+WArRdz9gsAiKiG/r
         Idd6vqypzijAg9F8Gcu42okiO32zjaU7kG6p56bCL5WcitLeTvhtzdHpqpHpXpQFWxnX
         1qBWQ+10Qn2KMyazjbx7L/wlzMVhMx7CRTTSJ+/nnEYYFvJi/EJAzR5aAAGZ7p6BS9iK
         /paA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=n9CWvdRGrK4bMPQkatGAJPsDM0FbpaeUd2Cn4z4UTgk=;
        b=pzXNnhAIXGoVbQ4KPBkEPxKfiFUZjXd26t99mJLzVxmt13D0rt5rbSVcBwnvGkTvKS
         uKtilyZeXh/4QqzBUrixpCdOVDTG8SYORkFcJxckdCAMjZxGDAbZ9qc0e18nvuNXGit/
         bObCMTLKwOVKfCb7gd0HWKNeTMErrUTVb7iQ9Cj+pD4iA2qzdCrijthpk/kgqaFbwMmj
         D2aYhdASfru7RxY9ImfuiQwrXFEL/M4C1tKhCUC8MetXsWE1fjuJmWH4tvIbNA/xOWCr
         SuG3yqHRID/AT9zf2JjhK4lHzs45Sbd/zMsASA4x0G0Zt0YocKIbIzD8C8gbQge8r75K
         Xeew==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.219.67 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=n9CWvdRGrK4bMPQkatGAJPsDM0FbpaeUd2Cn4z4UTgk=;
        b=EMvJQ2wpXLsTN7vtq80Bn4Ri69d/HHBDN8xJmN3Y82ZKK86gUdHlXq8iMIr9aKHcIh
         X7oQkoLV3cLdA71SKHlEPk/igvlp0olklRSEIn9x/OUCvbkeusq5Yj2qQlPPNk6h+yrz
         6eLqHtFFEyJdd3dOktdKWwR8YkAR5/Y1e9AY8K4EVG/BVyNRZHByUu0jhris4PJY820S
         3OHuDU5dVxpT/aDvV/R1hJpuSLTuLIEwJXM87Ex6anU0ljeERmA1a1ac/AN2VPmMBq44
         pLRhoX0WUdZKqsTadnJK62j4SjzYNLPOnWytaZk360dksRgSZ1QYSLEV7iN9g+g9s+ix
         hwgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=n9CWvdRGrK4bMPQkatGAJPsDM0FbpaeUd2Cn4z4UTgk=;
        b=L9yF0+cpo2mokoPUj+xZtHwEETkiu4ShL8XYiJwX7pAjhCGrFHrYXixRukBTZ/na6z
         FR8kLlwI3XwrgWbdjqI6nxYFuw+KfL1U4iybcfgt2ZmW4ElV+b/m4S5qiMdi7apEEFgz
         tY5GkILy5e7B6J8TbRXF7IUPKcdR7Ni5L21YIWhvmwBV3DPI04EYjKFz0Akd7Lyl+6E7
         dZub9jKYfEE4ubNZstdgj4w82ytIomZyK0fJruJ9qp+1yyQEEfABmLZKHT39Sdo+De/P
         eQmym77CTj8kKuwASEetjUfARFwpyxAWhVEVGzUv7ZDOu/meZ9j7xdUz1cnfGD1So0/L
         opGg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53386GRHXieYg9mU9IaBYlhBTsgiEciKmoosMDbR73g4y/nnb/s3
	U9TrFt2ApaiVhR1XgJ5Q19U=
X-Google-Smtp-Source: ABdhPJz8IIqKDnpyKlqFeGsQkLpo7dLxLScdk/mgDHlVqpFPErFv3YcpfVu9MFGYlNRL/iye/AkIzA==
X-Received: by 2002:a37:a508:: with SMTP id o8mr7547798qke.390.1590015416827;
        Wed, 20 May 2020 15:56:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:9b12:: with SMTP id d18ls152543qke.5.gmail; Wed, 20 May
 2020 15:56:56 -0700 (PDT)
X-Received: by 2002:a05:620a:1366:: with SMTP id d6mr7138073qkl.114.1590015416422;
        Wed, 20 May 2020 15:56:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590015416; cv=none;
        d=google.com; s=arc-20160816;
        b=ydGYsOUde4d3UU4X5Zc6H6TCv/gmOl9W0HAu5J3BOuGIpvYrn/UHlpYhz+ccbzcGrW
         aMcbIdo2i7CQwYnP3D2X09C/o0aw4tnbXWSKLsmjRfjLn2tbXqNyxG1GKUqD2GAzs17z
         6LtPe6U28OBKLxZb/N8jzDph++Lhg7Fq8H8od5VEcLfN10aRZmVy4pX7zk6+z3gypdyd
         fyioBW5F5ezni4cwVj2n6SvUlRc2V/QE1KxJh1QGg4VQejoaRuI8PWCVzcnAKP1XSIdb
         wiQ9kWMUtwuWD5AdXbjujwzSdLzRmmfbnsbla6j4E3YEr8LM13FsMjGRTZ2OEQL6Ed0C
         8drQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=S5uudwBjhFE1jaf4AL5EfN6tB/5lkdbGmgsY9l3eSls=;
        b=VgwPvOhk8YPe0QCWggYhHNvg6JiKGZaF8IeE1FabBa20KCT3hggtU+XimLYSkAhtYP
         GMM/uaOuIRW1UlTQsAV1mhAPa33nijZw7laMcxNmRRGIEIRA8O14RbHQghECbMt0O+Vm
         auCQ+NtOiOxOUQJhVzm3aOrAUBUxkOHHn0yFcrsNyF9PNw0XScRHAcfG2rBqKGu7Z3g0
         u1en/YqwUHRrAi5aGeaIgdi0MOps69/DQpzikJanI2b7qrN522iPhjUDGxSHWLhyTQXA
         hE3CPYITzNMeHDYOmqKv1zU+PfXemduZS2slPNY2xQbzLl/ER582EueF3rq/LC/G1Hhk
         S6XA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.219.67 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qv1-f67.google.com (mail-qv1-f67.google.com. [209.85.219.67])
        by gmr-mx.google.com with ESMTPS id p4si272518qtl.1.2020.05.20.15.56.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 May 2020 15:56:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 209.85.219.67 as permitted sender) client-ip=209.85.219.67;
Received: by mail-qv1-f67.google.com with SMTP id z5so2236093qvw.4
        for <clang-built-linux@googlegroups.com>; Wed, 20 May 2020 15:56:56 -0700 (PDT)
X-Received: by 2002:a05:6214:1372:: with SMTP id c18mr7548074qvw.194.1590015415943;
        Wed, 20 May 2020 15:56:55 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id t195sm2221514qke.110.2020.05.20.15.56.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 May 2020 15:56:55 -0700 (PDT)
From: Arvind Sankar <nivedita@alum.mit.edu>
To: clang-built-linux@googlegroups.com,
	x86@kernel.org
Cc: Fangrui Song <maskray@google.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH 0/1] x86/boot: lld fix
Date: Wed, 20 May 2020 18:56:53 -0400
Message-Id: <20200520225654.4144534-1-nivedita@alum.mit.edu>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 209.85.219.67 as
 permitted sender) smtp.mailfrom=niveditas98@gmail.com
Content-Type: text/plain; charset="UTF-8"
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

arch/x86/boot/setup.elf currently has an orphan section .text.startup,
and lld git as of ebf14d9b6d8b is breaking on 64-bit due to what seems
to be a change in behavior on orphan section placement (details in patch
commit message).

I'm not sure if this was an intentional change in lld, but it seems like
a good idea to explicitly include .text.startup anyway.

Arvind Sankar (1):
  x86/boot: Add .text.startup to setup.ld

 arch/x86/boot/setup.ld | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200520225654.4144534-1-nivedita%40alum.mit.edu.
