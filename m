Return-Path: <clang-built-linux+bncBDM6PI5M4IFRBAEKZXXQKGQEFWEVMII@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x340.google.com (mail-wm1-x340.google.com [IPv6:2a00:1450:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CB5E11DEFE
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Dec 2019 09:00:00 +0100 (CET)
Received: by mail-wm1-x340.google.com with SMTP id b131sf2027036wmd.9
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Dec 2019 00:00:00 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576224000; cv=pass;
        d=google.com; s=arc-20160816;
        b=nujt4GVFwCsZ7NHYmoipATU9q/G8vJDSqWdQo70DkPkZfMqiCNtwV1qTzclOAZxCjY
         an53fctgJnSTlvlGiQ8BTKysXL1m82BRUKFaxxxkG3HgnBuCSc5xChdv0nrUYKuu+R8P
         3t2QHAN/jbZCKaU9Ib2NQbBYZBEQW1hPKUE4mTjxyGaEdAO71VJ2uSp8HI592qorJVQt
         9CcwTv08dZZWdXXabptdSDUdycHFN1KpgFfquZQnxCXgNIn3K0nKaBBtkNoUpqipph0o
         KJx45XTgBdJ+eG1BS2hh6gSkhSrdIHdmq2ztYEhyIIYNYtz4L51JKPEiT3ofxRUUlHn/
         f1Mg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=ciNuejiebaVfVnNdIhXmocI3vXvhyTytnCSMcWHnbP0=;
        b=ElhSFOXePuqBcs6XKwJhrd186TKV7KSWrPoRCpZxMRDO5IwRQaXxfNUE/xsZ+IesXR
         SXOTtr2XltxYF9tCbpjuAQrJ3x0DDUrFMzOug1FhfOWf+5vWCEKCw05gMaOL7ZbwOxPk
         qwE8DlJ8gY34EWQNgu+sSi4AkdJDHy3kkodKXrIlHfsd32xYetA6GxBfbH403fQJsPtU
         Pt6gCQT49boi35CsFUtYOk02R3KjX3giwWBON199K2wfxT/eULZP1KBlJO7PBNSJHKQK
         3H9UAbh/szbzN9EMmQUNIAWWISDRnngIV8kHsPzOukQ9KtsG7suv+haVHIp+ldna8sKW
         DuJw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=KvG9zznH;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::336 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ciNuejiebaVfVnNdIhXmocI3vXvhyTytnCSMcWHnbP0=;
        b=BJh1VrYLw5yoMjzmukZdGlhoTWEP8ycZFz5W/v7t/49v9QJxNl4BqfdURjffyfV5K0
         EkpBDP6jXKVCfCREdQ6TOs+LBiKFbEk9Qn/B+r2eA0bGOJY8ny41on/yBstLnzWCeD1J
         6hFpIc6QqeHA+/u3yoyJ5uZMuXI7mtZH+OV2wrmxgjl3L/0ej3W6xPnhUEbA28DuzOsQ
         BkbP4w4E/yddnJFTWlnbiENa+Z6DKHpRJyixcgx+N5tf1yg3pJ72KKtPZqNQ2MEPKMp8
         TfxbBq32vdPzUJecjTyjkb3ZgaDgmWrBw9jW6gXRAkLtNsv0NV4N/RqjlQFFkvtqvwB0
         GOFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ciNuejiebaVfVnNdIhXmocI3vXvhyTytnCSMcWHnbP0=;
        b=ZLXjiCarvHaZRI/3z3LmXXQMyL9bQqPeqAUYOZAOGmAbYYMGNXd2N4rXgckXuSkFuN
         o1g/m2dd69wLVADDudilyQeOd33myrQozEeL+E8fmDjtloeVEGSfJ/ZCyUpZB3W6Ihik
         40gTFfavU6qMYzlvaC6aFD/PamIy68JmTZRlfPju6u7GAZl8Tt7MXde/EjwN1O6unmny
         0meKrslGY51my4Nwl5dxofPBMyUawV+cQxXQYOt8Gqqlpd7L9CFpYH874wJzBliM+E4P
         pA4s4id/brhoQbVjQnWpwnGMgpmWFSuJDNuxH6qIADXr6mu7Z6/CwPAEeEg/2+gK6Z1B
         2ndQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXy+KyDQijdjUo9ZFvry4zgMresgBH8PLPpkgeNvcKI6j25j8Jm
	Yv2hu7P8AT8SA75CxfA0JBI=
X-Google-Smtp-Source: APXvYqwmwaof8bNTlgh51Hiyqj41BKlsR0ZqxlUy405qmpKw4+FOuXCU/v1+3eYnUMuU3iVQ9An7BQ==
X-Received: by 2002:a1c:61d6:: with SMTP id v205mr12310436wmb.91.1576224000185;
        Fri, 13 Dec 2019 00:00:00 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:c76b:: with SMTP id x11ls4622617wmk.3.gmail; Thu, 12 Dec
 2019 23:59:59 -0800 (PST)
X-Received: by 2002:a05:600c:1009:: with SMTP id c9mr12185709wmc.162.1576223999632;
        Thu, 12 Dec 2019 23:59:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576223999; cv=none;
        d=google.com; s=arc-20160816;
        b=QvvdyVyalE2eLZjq17sQMZKhMs4HF9sBf3bFqf7GuvvC1t4MA9d6pPonyO7bSw9Wn0
         XpYtj+1W9jvYvAVN0yjkp7FJF/eYIUgPptMFGpsgMeKtZdwb02LRPiwbAGD0BdStWGxp
         kN0siEDv9CtTLGs0X2sd+PhEMZis5QNk0usnp8fiAK3SdK4k4PfQxChg456UYvtvhSaE
         HX6Qesfs34Aj4tkhgouHUh3xfpPGBhtGtWiIcc6OKPsUMp0ZbkaLaX8+GJhL1fSBTLcy
         SYMeV6hzVccSo3AJ3WCySw61+cswo1btXLicJEvcokbESJLNKBcGpE7iTtS4EwimAm5b
         G1Mg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=1OoGREg7VAdNmzhNay2A7Hfn6B8/9mrSS3C5l8XX0fU=;
        b=qHPV0gKBbPCr+8HKZuSTrsSYMdi8oF+DgJOYwOVu2+8it8FKTyxGZcfn6Oiqz+TOb6
         2l4swFSXfeNwKAP0Z96F7MjLl9UP8m2vJPqX81znIMpd1nNjgG8USEtjrjA1HQ9xWanB
         nZlQow2t1xvp5otog74cdJJXi+QAOZTef+tjjok4xhBCHLDjI8GesUgU+U0s/sEosAGP
         bVm1HFQxaJLnrAoz2iCO98lp+PK9GFerai8yJXFv5jeJ5NMgyl9ehUrS/g2LvU/WaS0M
         /1HDiPSMKaQPoqC9OLrkMQaMGhS5ZHe3s4Sgz+JUUIgK5Mj5UMp2vupxEhEo1c7mpDpl
         8cSA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=KvG9zznH;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::336 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com. [2a00:1450:4864:20::336])
        by gmr-mx.google.com with ESMTPS id j65si338598wmj.2.2019.12.12.23.59.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Dec 2019 23:59:59 -0800 (PST)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::336 as permitted sender) client-ip=2a00:1450:4864:20::336;
Received: by mail-wm1-x336.google.com with SMTP id q9so5234896wmj.5
        for <clang-built-linux@googlegroups.com>; Thu, 12 Dec 2019 23:59:59 -0800 (PST)
X-Received: by 2002:a05:600c:a:: with SMTP id g10mr11446231wmc.69.1576223999078;
        Thu, 12 Dec 2019 23:59:59 -0800 (PST)
Received: from 172.17.0.4 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id a9sm27567wmm.15.2019.12.12.23.59.57
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 12 Dec 2019 23:59:57 -0800 (PST)
From: ci_notify@linaro.org
Date: Fri, 13 Dec 2019 07:59:57 +0000 (UTC)
To: tcwg-validation@linaro.org, llvm@linaro.org, 
	clang-built-linux@googlegroups.com
Message-ID: <264703243.4480.1576223997902.JavaMail.javamailuser@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-master-arm-mainline-allmodconfig - Build # 25 -
 Successful!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_4479_1819205058.1576223997213"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-master-arm-mainline-allmodconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=KvG9zznH;       spf=pass
 (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::336
 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

------=_Part_4479_1819205058.1576223997213
Content-Type: text/plain; charset="UTF-8"

Successfully identified regression in *llvm* in CI configuration tcwg_kernel/llvm-master-arm-mainline-allmodconfig.  So far, this commit has regressed CI configurations:
 - tcwg_kernel/llvm-master-arm-mainline-allmodconfig

Culprit:
<cut>
commit 8e04896288d22ed8bef7ac367923374f96b753d6
Author: David Blaikie <dblaikie@gmail.com>
Date:   Thu Dec 12 16:53:59 2019 -0800

    NFC: DebugInfo: Refactor RangeSpanList to be a struct, like DebugLocStream::List
    
    Move these data structures closer together so their emission code can
    eventually share more of its implementation.
</cut>

First few errors in logs of first_bad:
00:10:38 clang-10: error: unable to execute command: Segmentation fault (core dumped)
00:10:38 clang-10: error: clang frontend command failed due to signal (use -v to see invocation)
00:10:39 make[2]: *** [fs/xfs/xfs_trace.o] Error 254
00:10:41 clang-10: error: unable to execute command: Segmentation fault (core dumped)
00:10:41 clang-10: error: clang frontend command failed due to signal (use -v to see invocation)
00:10:41 make[2]: *** [fs/xfs/libxfs/xfs_ag.o] Error 254
00:10:46 clang-10: error: unable to execute command: Segmentation fault (core dumped)
00:10:46 clang-10: error: clang frontend command failed due to signal (use -v to see invocation)
00:10:47 make[2]: *** [fs/xfs/libxfs/xfs_alloc_btree.o] Error 254
00:10:47 clang-10: error: unable to execute command: Segmentation fault (core dumped)
Configuration details:
rr[llvm_url]="https://github.com/llvm/llvm-project.git"
rr[linux_url]="https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git"
rr[llvm_branch]="d5a43ce6889e0b96f8175b5235c586aa34c7661b"

Results regressed to (for first_bad == 8e04896288d22ed8bef7ac367923374f96b753d6)
reset_artifacts:
-10
build_llvm:
-1
linux_n_obj:
19954

from (for last_good == 20e06a28dac65a68bfd906d703e980a8212f6187)
reset_artifacts:
-10
build_llvm:
-1
linux_n_obj:
27422
linux build successful:
all

Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allmodconfig/25/artifact/artifacts/build-8e04896288d22ed8bef7ac367923374f96b753d6/
Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allmodconfig/25/artifact/artifacts/build-20e06a28dac65a68bfd906d703e980a8212f6187/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allmodconfig/25/

Reproduce builds:
<cut>
mkdir investigate-llvm-8e04896288d22ed8bef7ac367923374f96b753d6
cd investigate-llvm-8e04896288d22ed8bef7ac367923374f96b753d6

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allmodconfig/25/artifact/artifacts/manifests/build-baseline.sh
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allmodconfig/25/artifact/artifacts/manifests/build-parameters.sh
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allmodconfig/25/artifact/artifacts/test.sh
chmod +x artifacts/test.sh

# Reproduce the baseline build (build all pre-requisites)
./jenkins-scripts/tcwg_kernel-build.sh @@ artifacts/manifests/build-baseline.sh

cd llvm

# Reproduce first_bad build
git checkout --detach 8e04896288d22ed8bef7ac367923374f96b753d6
../artifacts/test.sh

# Reproduce last_good build
git checkout --detach 20e06a28dac65a68bfd906d703e980a8212f6187
../artifacts/test.sh

cd ..
</cut>

History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-master-arm-mainline-allmodconfig

Bisect log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allmodconfig/25/artifact/artifacts/bisect.log/*view*/
Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allmodconfig/25/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allmodconfig/25/consoleText

Full commit:
<cut>
commit 8e04896288d22ed8bef7ac367923374f96b753d6
Author: David Blaikie <dblaikie@gmail.com>
Date:   Thu Dec 12 16:53:59 2019 -0800

    NFC: DebugInfo: Refactor RangeSpanList to be a struct, like DebugLocStream::List
    
    Move these data structures closer together so their emission code can
    eventually share more of its implementation.
---
 llvm/lib/CodeGen/AsmPrinter/DwarfCompileUnit.cpp |  4 ++--
 llvm/lib/CodeGen/AsmPrinter/DwarfDebug.cpp       | 11 ++++++-----
 llvm/lib/CodeGen/AsmPrinter/DwarfFile.cpp        |  2 +-
 llvm/lib/CodeGen/AsmPrinter/DwarfFile.h          | 13 ++-----------
 4 files changed, 11 insertions(+), 19 deletions(-)

diff --git a/llvm/lib/CodeGen/AsmPrinter/DwarfCompileUnit.cpp b/llvm/lib/CodeGen/AsmPrinter/DwarfCompileUnit.cpp
index 0f3d8c689fa..5707f962b4b 100644
--- a/llvm/lib/CodeGen/AsmPrinter/DwarfCompileUnit.cpp
+++ b/llvm/lib/CodeGen/AsmPrinter/DwarfCompileUnit.cpp
@@ -503,10 +503,10 @@ void DwarfCompileUnit::addScopeRangeList(DIE &ScopeDIE,
     const MCSymbol *RangeSectionSym =
         TLOF.getDwarfRangesSection()->getBeginSymbol();
     if (isDwoUnit())
-      addSectionDelta(ScopeDIE, dwarf::DW_AT_ranges, List.getSym(),
+      addSectionDelta(ScopeDIE, dwarf::DW_AT_ranges, List.Label,
                       RangeSectionSym);
     else
-      addSectionLabel(ScopeDIE, dwarf::DW_AT_ranges, List.getSym(),
+      addSectionLabel(ScopeDIE, dwarf::DW_AT_ranges, List.Label,
                       RangeSectionSym);
   }
 }
diff --git a/llvm/lib/CodeGen/AsmPrinter/DwarfDebug.cpp b/llvm/lib/CodeGen/AsmPrinter/DwarfDebug.cpp
index aa33659cd06..62745f9bee7 100644
--- a/llvm/lib/CodeGen/AsmPrinter/DwarfDebug.cpp
+++ b/llvm/lib/CodeGen/AsmPrinter/DwarfDebug.cpp
@@ -2331,7 +2331,7 @@ static MCSymbol *emitRnglistsTableHeader(AsmPrinter *Asm,
   Asm->OutStreamer->EmitLabel(Holder.getRnglistsTableBaseSym());
 
   for (const RangeSpanList &List : Holder.getRangeLists())
-    Asm->EmitLabelDifference(List.getSym(), Holder.getRnglistsTableBaseSym(),
+    Asm->EmitLabelDifference(List.Label, Holder.getRnglistsTableBaseSym(),
                              4);
 
   return TableEnd;
@@ -2688,11 +2688,11 @@ void DwarfDebug::emitDebugARanges() {
 /// Emit a single range list. We handle both DWARF v5 and earlier.
 static void emitRangeList(DwarfDebug &DD, AsmPrinter *Asm,
                           const RangeSpanList &List) {
-  emitRangeList(DD, Asm, List.getSym(), List.getRanges(), List.getCU(),
+  emitRangeList(DD, Asm, List.Label, List.Ranges, *List.CU,
                 dwarf::DW_RLE_base_addressx, dwarf::DW_RLE_offset_pair,
                 dwarf::DW_RLE_startx_length, dwarf::DW_RLE_end_of_list,
                 llvm::dwarf::RangeListEncodingString,
-                List.getCU().getCUNode()->getRangesBaseAddress() ||
+                List.CU->getCUNode()->getRangesBaseAddress() ||
                     DD.getDwarfVersion() >= 5,
                 [](auto) {});
 }
@@ -2709,8 +2709,9 @@ void DwarfDebug::emitDebugRangesImpl(const DwarfFile &Holder, MCSection *Section
 
   Asm->OutStreamer->SwitchSection(Section);
 
-  MCSymbol *TableEnd =
-      getDwarfVersion() < 5 ? nullptr : emitRnglistsTableHeader(Asm, Holder);
+  MCSymbol *TableEnd = nullptr;
+  if (getDwarfVersion() < 5)
+    TableEnd = emitRnglistsTableHeader(Asm, Holder);
 
   for (const RangeSpanList &List : Holder.getRangeLists())
     emitRangeList(*this, Asm, List);
diff --git a/llvm/lib/CodeGen/AsmPrinter/DwarfFile.cpp b/llvm/lib/CodeGen/AsmPrinter/DwarfFile.cpp
index e3c9095d134..e5c4db58f47 100644
--- a/llvm/lib/CodeGen/AsmPrinter/DwarfFile.cpp
+++ b/llvm/lib/CodeGen/AsmPrinter/DwarfFile.cpp
@@ -126,6 +126,6 @@ void DwarfFile::addScopeLabel(LexicalScope *LS, DbgLabel *Label) {
 std::pair<uint32_t, RangeSpanList *>
 DwarfFile::addRange(const DwarfCompileUnit &CU, SmallVector<RangeSpan, 2> R) {
   CURangeLists.push_back(
-      RangeSpanList(Asm->createTempSymbol("debug_ranges"), CU, std::move(R)));
+      RangeSpanList{Asm->createTempSymbol("debug_ranges"), &CU, std::move(R)});
   return std::make_pair(CURangeLists.size() - 1, &CURangeLists.back());
 }
diff --git a/llvm/lib/CodeGen/AsmPrinter/DwarfFile.h b/llvm/lib/CodeGen/AsmPrinter/DwarfFile.h
index 35fa51fb24c..cf293d7534d 100644
--- a/llvm/lib/CodeGen/AsmPrinter/DwarfFile.h
+++ b/llvm/lib/CodeGen/AsmPrinter/DwarfFile.h
@@ -37,21 +37,12 @@ struct RangeSpan {
   const MCSymbol *End;
 };
 
-class RangeSpanList {
-private:
+struct RangeSpanList {
   // Index for locating within the debug_range section this particular span.
-  MCSymbol *RangeSym;
+  MCSymbol *Label;
   const DwarfCompileUnit *CU;
   // List of ranges.
   SmallVector<RangeSpan, 2> Ranges;
-
-public:
-  RangeSpanList(MCSymbol *Sym, const DwarfCompileUnit &CU,
-                SmallVector<RangeSpan, 2> Ranges)
-      : RangeSym(Sym), CU(&CU), Ranges(std::move(Ranges)) {}
-  MCSymbol *getSym() const { return RangeSym; }
-  const DwarfCompileUnit &getCU() const { return *CU; }
-  const SmallVectorImpl<RangeSpan> &getRanges() const { return Ranges; }
 };
 
 class DwarfFile {
</cut>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/264703243.4480.1576223997902.JavaMail.javamailuser%40localhost.

------=_Part_4479_1819205058.1576223997213--
